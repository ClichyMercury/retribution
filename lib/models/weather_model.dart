class Weather {
  String? CityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feels_like;
  String? country;

  Weather(
      {this.CityName,
      this.temp,
      this.wind,
      this.humidity,
      this.pressure,
      this.feels_like,
      this.country});

  Weather.fromJson(Map<String, dynamic> json) {
    CityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    pressure = json["main"]["pressure"];
    feels_like = json["main"]["feels_like"];
    country = json["sys"]["country"];
  }
}
