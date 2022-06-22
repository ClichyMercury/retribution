import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../services/weather_api_services.dart';

class others_imformations extends StatefulWidget {
  @override
  State<others_imformations> createState() => _others_imformationsState();
}

class _others_imformationsState extends State<others_imformations> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("abidjan", "ci");
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('others_imformations'),
        centerTitle: true,
        backgroundColor: Colors.red.shade500,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "${data!.country}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "${data!.CityName}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  othersInformations(
                    "${data!.lon}",
                    "${data!.lat}",
                    "${data!.timezone}",
                    "${data!.clouds}",
                    "${data!.wind_Dir}",
                    "${data!.base}",
                    "${data!.temp_min}",
                    "${data!.temp_max}",
                  )
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

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget othersInformations(
    String lon,
    String lat,
    String timezone,
    String clouds,
    String windDir,
    String base,
    String temp_min,
    String temp_max) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Longitude",
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Lattitude",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$lon",
                  style: infoFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$lat",
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Timezone",
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "clouds",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$timezone",
                  style: infoFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$clouds",
                  style: infoFont,
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "wind direction",
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "base",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$windDir",
                  style: infoFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$base",
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "temp min",
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "temp max",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$temp_min",
                  style: infoFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$temp_max",
                  style: infoFont,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
