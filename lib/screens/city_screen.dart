import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {

  final _controller = TextEditingController();
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/city_background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      constraints: const BoxConstraints.expand(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      color: Colors.black
                    ),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      icon: Icon(Icons.location_city),
                      hintText: 'Enter City Name',
                      hintStyle: TextStyle(
                        color: Colors.grey
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      )
                    ),
                    controller: _controller,
                    onChanged: (String value) {
                      cityName = value;
                    },

                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, cityName);
                  },
                  child: const Text(
                    'Get Weather',
                    style: kButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
