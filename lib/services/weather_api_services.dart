import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:retribution/models/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location, String? country) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location,$country&APPID=a171501a17e63e30a27bf5a29e7e347c&units=metric");
    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
    print(Weather.fromJson(body).CityName);
    return Weather.fromJson(body);
  }
}
