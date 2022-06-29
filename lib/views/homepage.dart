import 'package:flutter/material.dart';
import 'package:retribution/models/weather_model.dart';
import 'package:retribution/services/weather_api_services.dart';
import 'package:retribution/views/additional_informations.dart';
import 'package:retribution/views/current_weather.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
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
        body: FooterView(
          children: [
            FutureBuilder(
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
                        additionalInformations(
                            "${data!.wind}",
                            "${data!.humidity}",
                            "${data!.pressure}",
                            "${data!.feels_like}")
                      ],
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Container(
                    height: 50,
                  );
                }),
          ],
          footer: new Footer(
            backgroundColor: Color.fromARGB(255, 66, 185, 187),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Center(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: new Icon(
                                    Icons.audiotrack,
                                    size: 20.0,
                                  ),
                                  color: Color(0xFF162A49),
                                  onPressed: () {},
                                ),
                              ),
                            )),
                        new Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: new Icon(
                                    Icons.fingerprint,
                                    size: 20.0,
                                  ),
                                  color: Color(0xFF162A49),
                                  onPressed: () {},
                                ),
                              ),
                            )),
                        new Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: new Icon(
                                    Icons.call,
                                    size: 20.0,
                                  ),
                                  color: Color(0xFF162A49),
                                  onPressed: () {},
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Copyright ©2022, All Rights Reserved.',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Color(0xFF162A49)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Powered by SAYATH inc.',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Color(0xFF162A49)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ]),
            padding: EdgeInsets.all(5.0),
          ),
        ));
  }
}
