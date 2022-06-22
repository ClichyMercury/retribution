class Weather {
  String? CityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feels_like;
  String? country;
  double? lon;
  double? lat;
  int? clouds;
  int? wind_Dir;
  String? base;
  int? timezone;
  double? temp_min;
  double? temp_max;

  Weather(
      {this.CityName,
      this.temp,
      this.wind,
      this.humidity,
      this.pressure,
      this.feels_like,
      this.lat,
      this.lon,
      this.temp_max,
      this.temp_min,
      this.clouds,
      this.timezone,
      this.base,
      this.wind_Dir,
      this.country});

  Weather.fromJson(Map<String, dynamic> json) {
    CityName = json["name"];
    temp = json["main"]["temp"];
    temp_min = json["main"]["temp_min"];
    temp_max = json["main"]["temp_max"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    pressure = json["main"]["pressure"];
    feels_like = json["main"]["feels_like"];
    country = json["sys"]["country"];
    lon = json["coord"]["lon"];
    lat = json["coord"]["lat"];
    timezone = json["timezone"];
    wind_Dir = json["wind"]["deg"];
    clouds = json["clouds"]["all"];
    base = json["base"];
  }
}
