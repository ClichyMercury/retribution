import 'package:flutter/material.dart';
import 'package:retribution/models/weather_model.dart';
import 'package:retribution/services/weather_api_services.dart';
import 'package:retribution/views/additional_informations.dart';
import 'package:retribution/views/current_weather.dart';

import 'navigation_drawer.dart';

class HomePage extends StatefulWidget {
  final String? Cityname;
  final String? CountryID;

  HomePage({
    Key? key,
    required this.Cityname,
    this.CountryID,
  }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("abidjan", "ci");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 66, 185, 187),
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 66, 185, 187),
          elevation: 0.0,
          title: const Text(
            "Weather app",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    currentWeather(Icons.wb_sunny_rounded, "${data!.temp}°",
                        "${data!.CityName}"),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Additional informations",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    additionalInformations("${data!.wind}", "${data!.humidity}",
                        "${data!.pressure}", "${data!.feels_like}")
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container();
            }));
  }
}
