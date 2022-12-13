import 'package:flutter/material.dart';
import 'package:weather/core/providers/globals/weather_provider.dart';
import 'package:weather/core/utils/utils.dart';

///Build your own colors here!

const Color primaryColor = Colors.blue;
const Color secondaryColor = Colors.lightBlueAccent;
Color get shadowColor => Colors.black.withOpacity(.05);

const Color lightPrimaryColor = primaryColor;
const Color darkPrimaryColor = primaryColor;

const Color reactionBackground = Color(0xffF6F6F6);
const Color standardWhite = Color(0xFFFFFDF9);

const Color lightBackground = Color(0xffF5F6FA);
const Color darkBackground = Color(0xff202020);

ThemeWeather backgroundWeatherTheme(BuildContext context) {
  var now = unixToDateTime(WeatherProvider.read(context).openWeather?.dt) ?? DateTime.now();
  if (now.hour >= 0 && now.hour < 5) return ThemeWeather(evening, evening.colors.first);
  if (now.hour >= 5 && now.hour < 7) return ThemeWeather(beforeSunRise, evening.colors.first);
  if (now.hour >= 7 && now.hour < 11) return ThemeWeather(dawn, evening.colors.first);
  if (now.hour >= 11 && now.hour < 17) return ThemeWeather(day, evening.colors.first);
  if (now.hour >= 17 && now.hour < 19) return ThemeWeather(candleLight, evening.colors.first);
  if (now.hour >= 20 && now.hour < 24) return ThemeWeather(evening, evening.colors.first);
  return ThemeWeather(day, day.colors.first);
}

List<Gradient> get gradients => [day, candleLight, beforeSunRise, evening, dawn];

List<ThemeWeather> get weatherThemes => [
      ThemeWeather(day, evening.colors.first),
      ThemeWeather(candleLight, evening.colors.first),
      ThemeWeather(beforeSunRise, evening.colors.first),
      ThemeWeather(evening, evening.colors.first),
      ThemeWeather(dawn, evening.colors.first),
    ];

LinearGradient get candleLight => const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff966cc3), Color(0xffcba1ab), Color(0xfffecc93)],
    );

LinearGradient get beforeSunRise => const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff766bcb), Color(0xffc184c8), Color(0xfffa99c5)],
    );

LinearGradient get evening => const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff011439), Color(0xff012c57), Color(0xff046198)],
    );

LinearGradient get dawn => const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffffcfcf), Color(0xffa3d0dc), Color(0xff60cee4)],
    );

LinearGradient get day => const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff61b1ea), Color(0xff9fdcf7), Color(0xffb7fcff)],
    );

class ThemeWeather {
  Gradient backround;
  Color deerColor;

  ThemeWeather(this.backround, this.deerColor);
}
