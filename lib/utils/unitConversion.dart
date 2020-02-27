import 'dart:math';

import 'package:flutter/material.dart';

double convertKelvinToCelcius(double degressKelvin) {
  return _roundDouble(degressKelvin - 273.15, 2);
}

double _roundDouble(double value, int places) {
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

String convertTimestampToDate(int timestamp) {
  return _getWeekdayFromPosition(
      new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true)
          .weekday);
}

String _getWeekdayFromPosition(int pos) {
  switch (pos) {
    case 1:
      return "Mon";
      break;
    case 2:
      return "Tue";
      break;
    case 3:
      return "Wed";
      break;
    case 4:
      return "Thu";
      break;
    case 5:
      return "Fri";
      break;
    case 6:
      return "Sat";
      break;
    case 7:
      return "Sun";
      break;
    default:
      return "N/A";
  }
}

Widget getCompassDirectionFromDrgrees(int degrees, BuildContext context) {
  return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
    Transform.rotate(
      angle: (pi * (degrees.toDouble()-90))/180,
      child: Image.network(
        "https://clipartart.com/images/arrow-clipart-block-2.png",
        width: 30,
      ),
    ),
    Text(
      "$degrees º ${getAlternateCompassDirection(degrees)}",
      style: Theme.of(context).textTheme.caption,
    )
  ]));
}

String getAlternateCompassDirection(int degrees) {
  if (degrees >= 337.5 || degrees < 22.5) {
    return "N";
  } else if (degrees >= 22.5 && degrees < 67.5) {
    return "NE";
  } else if (degrees >= 67.5 && degrees < 112.5) {
    return "E";
  } else if (degrees >= 112.5 && degrees < 157.5) {
    return "SE";
  } else if (degrees >= 157.5 && degrees < 202.5) {
    return "S";
  } else if (degrees >= 202.5 && degrees < 247.5) {
    return "SW";
  } else if (degrees >= 247.5 && degrees < 292.5) {
    return "W";
  } else {
    return "NW";
  }
}
