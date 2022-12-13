import 'package:weather/core/models/model.dart';

class OpenWeather extends Model {
  OpenWeather({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    this.snow,
    this.rain,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  Snow? snow;
  Snow? rain;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  factory OpenWeather.fromJson(Map<String, dynamic> json) => OpenWeather(
        coord: Coord.fromJson(json["coord"]),
        weather: json["weather"] != null ? List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))) : [],
        base: json["base"],
        main: Main.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: Wind.fromJson(json["wind"]),
        snow: json.containsKey("snow") ? Snow.fromJson(json["snow"]) : null,
        rain: json.containsKey("rain") ? Snow.fromJson(json["rain"]) : null,
        clouds: Clouds.fromJson(json["clouds"]),
        dt: json["dt"],
        sys: Sys.fromJson(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "coord": coord.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "main": main.toJson(),
        "visibility": visibility,
        "wind": wind.toJson(),
        "snow": snow?.toJson(),
        "rain": rain?.toJson(),
        "clouds": clouds.toJson(),
        "dt": dt,
        "sys": sys.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}

class Clouds extends Model {
  Clouds({
    required this.all,
  });

  int all;

  factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json["all"] ?? 0,
      );

  @override
  Map<String, dynamic> toJson() => {
        "all": all,
      };
}

class Coord extends Model {
  Coord({
    required this.lon,
    required this.lat,
  });

  double lon;
  double lat;

  factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lon: json["lon"].toDouble() ?? 0,
        lat: json["lat"].toDouble() ?? 0,
      );

  @override
  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
      };
}

class Main extends Model {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;
  int seaLevel;
  int grndLevel;

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"]?.toDouble() ?? 0,
        feelsLike: json["feels_like"]?.toDouble() ?? 0,
        tempMin: json["temp_min"]?.toDouble() ?? 0,
        tempMax: json["temp_max"]?.toDouble() ?? 0,
        pressure: json["pressure"] ?? 0,
        humidity: json["humidity"] ?? 0,
        seaLevel: json["sea_level"] ?? 0,
        grndLevel: json["grnd_level"] ?? 0,
      );

  @override
  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
        "sea_level": seaLevel,
        "grnd_level": grndLevel,
      };
}

class Snow {
  Snow({
    this.the1H = 0,
    this.the3H = 0,
  });

  double the1H;
  double the3H;

  factory Snow.fromJson(Map<String, dynamic> json) => Snow(
        the1H: json["1h"]?.toDouble() ?? 0,
        the3H: json["3h"]?.toDouble() ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "1h": the1H,
      };
}

class Sys extends Model {
  Sys({
    this.type = 0,
    this.id = 0,
    required this.country,
    this.sunrise = 0,
    this.sunset = 0,
  });

  int type;
  int id;
  String country;
  int sunrise;
  int sunset;

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        type: json["type"] ?? 0,
        id: json["id"] ?? 0,
        country: json["country"] ?? "N/A",
        sunrise: json["sunrise"] ?? 0,
        sunset: json["sunset"] ?? 0,
      );

  @override
  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}

class Weather extends Model {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  int id;
  String main;
  String description;
  String icon;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}

class Wind extends Model {
  Wind({
    this.speed = 0,
    this.deg = 0,
    this.gust = 0,
  });

  double speed;
  int deg;
  double gust;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble() ?? 0,
        deg: json["deg"] ?? 0,
        gust: json["gust"]?.toDouble() ?? 0,
      );

  @override
  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
        "gust": gust,
      };
}
