import 'package:weather/core/https/http_connection.dart';
import 'package:weather/core/models/open_weather.dart';

import '../resources/environment.dart';

class WeatherHttp extends HttpConnection {
  WeatherHttp(super.context);

  Future<OpenWeather?> getWeather({
    String units = "metric",
    required double lat,
    required double lon,
    String lang = "en",
  }) async {
    final response = await get("weather", params: {
      "appid": weatherKey,
      "lat": lat.toString(),
      "lon": lon.toString(),
      "lang": lang,
      "units": "metric",
      "mode": "json",
    });
    if (response != null) {
      return OpenWeather.fromJson(response);
    } else {
      return null;
    }
  }
}
