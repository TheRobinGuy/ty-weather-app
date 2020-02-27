import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/current_day.dart';
import 'package:weather_app/ui/widgets/temperature_info.dart';

import 'info_table.dart';

class CurrentLocationInfo extends StatelessWidget {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;
  final int timestamp;
  final String weatherType;
  final double windSpeed;
  final int windDirection;

  CurrentLocationInfo({
    @required this.location,
    @required this.temperature,
    @required this.isCelcius,
    @required this.weatherIcon,
    @required this.timestamp,
    @required this.weatherType,
    @required this.windSpeed,
    @required this.windDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: new Container(
        constraints: BoxConstraints(maxHeight: 380.0, minHeight: 360.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: CurrentDay(
              timestamp: 1582795595,
            )),
            Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFFFF),
                ),
                Container(
                  width: 120,
                  child: Column(children: [
                    Image.asset(
                      weatherIcon,
                      fit: BoxFit.cover,
                      width: 120.0,
                    ),
                  ]),
                ),
                Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TemperatureInfo(
                              temperature: 267,
                              isCelcius: false,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Location",
                            style: Theme.of(context).textTheme.title,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 50.0, minHeight: 40.0),
            ),
            InfoTable(
                mainTitle: "Title : ",
                firstTitle: "Column 1",
                firstTitleContent: "Content 1",
                secondTitle: "Column 2",
                secondTitleContent: "Content 2",
                thirdTitle: "Column 3",
                thirdTitleContent: "Content 3"),
          ],
        ),
      ),
    );
  }
}
