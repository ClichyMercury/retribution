import 'package:flutter/material.dart';
import 'package:retribution/views/homepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController CityName = TextEditingController();
  final TextEditingController CountryID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 50.0,
              horizontal: 30.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/meteo.png"),
                SizedBox(height: 15.0),
                Text(
                  "Weather By Clichy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  controller: CityName,
                  decoration: InputDecoration(
                    labelText: "CityName",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  controller: CountryID,
                  decoration: InputDecoration(
                    labelText: "Country ID",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber, // background
                    onPrimary: Colors.black, // foreground
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => HomePage(
                              Cityname: '${CityName}',
                              CountryID: '${CountryID}',
                            )));
                  },
                  child: Text('Log in'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
