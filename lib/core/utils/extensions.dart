import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';
import 'package:weather/core/models/open_weather.dart';

extension KeyboardDismisser on Widget {
  Widget dismissKeyboardOnTap(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: this,
    );
  }
}

extension WeatherTypeModel on Weather {
  WeatherType get weatherType {
    // Thunder
    if (id >= 200 && id < 300) return WeatherType.thunder;
    // Drizzle
    if (id >= 300 && id < 400) return WeatherType.lightRainy;
    switch (id) {
      // Raining
      case 500:
        return WeatherType.lightRainy;
      case 501:
        return WeatherType.middleRainy;
      case 502:
        return WeatherType.middleRainy;
      case 503:
        return WeatherType.heavyRainy;
      case 504:
        return WeatherType.heavyRainy;
      case 511:
        return WeatherType.middleRainy;
      case 520:
        return WeatherType.lightRainy;
      case 521:
        return WeatherType.middleRainy;
      case 522:
        return WeatherType.middleRainy;
      case 531:
        return WeatherType.middleRainy;

      // Snowing
      case 600:
        return WeatherType.lightSnow;
      case 601:
        return WeatherType.middleSnow;
      case 602:
        return WeatherType.heavySnow;
      case 611:
        return WeatherType.middleSnow;
      case 612:
        return WeatherType.lightSnow;
      case 613:
        return WeatherType.middleSnow;
      case 615:
        return WeatherType.lightSnow;
      case 616:
        return WeatherType.middleSnow;
      case 620:
        return WeatherType.middleSnow;
      case 621:
        return WeatherType.heavySnow;
      case 622:
        return WeatherType.heavySnow;

      //Atmosphere
      case 701:
        return WeatherType.foggy;
      case 711:
        return WeatherType.foggy;
      case 721:
        return WeatherType.hazy;
      case 731:
        return WeatherType.dusty;
      case 741:
        return WeatherType.foggy;
      case 751:
        return WeatherType.dusty;
      case 761:
        return WeatherType.dusty;
      case 762:
        return WeatherType.foggy;
      case 771:
        return WeatherType.thunder;
      case 781:
        return WeatherType.thunder;

      //Clouds
      case 800:
        return WeatherType.sunny;
      case 801:
        return WeatherType.sunny;
      case 802:
        return WeatherType.cloudy;
      case 803:
        return WeatherType.overcast;
      case 804:
        return WeatherType.overcast;
    }

    return WeatherType.sunny;
  }
}
