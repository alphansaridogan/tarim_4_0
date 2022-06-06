

import 'package:flutter/material.dart';

Map<String, IconData> iconsMap = {
  '01d': Icons.wb_sunny_rounded ,
  '01n': Icons.calendar_view_day_rounded,
};


Widget CurrentWeather(
    String icon,
    String temp,
    String location,


    )
{
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Text('$temp C°',
        style: TextStyle(
          fontSize: 46,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('$location',
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade600,
          ),
        ),
      ],
    ),
  );

}

