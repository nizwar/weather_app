// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather/core/resources/environment.dart';

import '../../https/weather_http.dart';
import '../../models/open_weather.dart';

///Location provider for getting current location
class WeatherProvider extends ChangeNotifier {
  List<double>? _currentLocation;

  OpenWeather? _openWeather;

  OpenWeather? get openWeather => _openWeather;

  void initialize(BuildContext context) {
    fetchCurrentLocation(context);
  }

  ///Get current location
  List<double> get currentLocation => _currentLocation ?? defaultLocation;

  set currentLocation(List<double> value) {
    _currentLocation = value;
    notifyListeners();
  }

  ///Fetch current location and notify listeners
  Future fetchCurrentLocation(BuildContext context) async {
    if (await _checkPermission()) {
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then((value) => [value.latitude, value.longitude]).then((value) {
        _currentLocation = value;
        loadWeather(context);
      }).catchError((e) {
        loadWeather(context);
      });

      notifyListeners();
    } else {
      loadWeather(context);
    }
  }

  ///Checking user's permission and service status
  Future<bool> _checkPermission([bool requested = false]) async {
    var serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location services are disabled.');
      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) return false;
    if (permission == LocationPermission.denied) {
      if (requested) return false;
      permission = await Geolocator.requestPermission();
      //Recall this function with requested = true to check permission again
      return _checkPermission(true);
    } else {
      return true;
    }
  }

  void loadWeather(BuildContext context) async {
    WeatherHttp(context).getWeather(lat: currentLocation.first, lon: currentLocation.last).then((value) {
      _openWeather = value;
      notifyListeners();
    });
  }

  static WeatherProvider read(BuildContext context) => context.read();
  static WeatherProvider watch(BuildContext context) => context.watch();
}
