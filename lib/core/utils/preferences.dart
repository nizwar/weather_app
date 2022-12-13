import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

///Preferences class for storing and retrieving data from shared preferences
class Preferences {
  Preferences(this.shared);

  ///Shared preferences instance
  final SharedPreferences shared;

  ///Get stored location from shared preferences
  List<Map<String, dynamic>> get storedGeoLocation {
    var list = shared.getStringList("stored_location");
    if (list?.isNotEmpty ?? false) {
      return list!.map((e) => Map<String, dynamic>.from(jsonDecode(e))).toList();
    } else {
      return [];
    }
  }

  ///Add new location to stored location
  void addGeoLocation(Map<String, dynamic> location) {
    var list = storedGeoLocation;
    list.add(location);
    shared.setStringList("stored_location", list.map((e) => jsonEncode(e)).toList());
  }

  ///Preferences instance
  static Future<Preferences> instance() => SharedPreferences.getInstance().then((value) => Preferences(value));
}
