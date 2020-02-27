import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/current_day.dart';
import 'package:weather_app/ui/widgets/temperature_info.dart';
import 'package:weather_app/utils/unitConversion.dart';

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
        constraints: BoxConstraints(maxHeight: 685.0, minHeight: 600.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: CurrentDay(
              timestamp: timestamp,
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
                            temperature: temperature,
                            isCelcius: isCelcius,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            location,
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
              constraints: BoxConstraints(maxHeight: 5.0, minHeight: 4.0),
            ),
            InfoTable(
                mainTitle: "Wind : ",
                firstTitle: "Speed",
                firstTitleContent: " $windSpeed kts",
                secondTitle: "Gust",
                secondTitleContent: "17 kts",
                thirdTitle: "Direction",
                thirdTitleContent:
                    getCompassDirectionFromDrgrees(windDirection, context)),
            Container(
              constraints: BoxConstraints(maxHeight: 5.0, minHeight: 5.0),
            ),
            InfoTable(
                mainTitle: "Precipitation : ",
                firstTitle: "Fall",
                firstTitleContent: "18mm",
                secondTitle: " ",
                secondTitleContent: " ",
                thirdTitle: "Chance",
                thirdTitleContent: Text(
                  "56%",
                  style: Theme.of(context).textTheme.caption,
                )),
            Container(
              constraints: BoxConstraints(maxHeight: 5.0, minHeight: 5.0),
            ),
            InfoTable(
                mainTitle: "All Day : ",
                firstTitle: "Moon",
                firstTitleContent: "Full",
                secondTitle: " ",
                secondTitleContent: " ",
                thirdTitle: "Tide",
                thirdTitleContent: Text(
                  "09:00 | HIGH \n 15:00 | LOW \n 21:00 | HIGH",
                  style: Theme.of(context).textTheme.caption,
                )),
          ],
        ),
      ),
    );
  }
}
