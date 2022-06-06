import 'package:flutter/material.dart';

Map<String, IconData> iconsMap = {
  '01d': Icons.wb_sunny_rounded,
  '01n': Icons.calendar_view_day_rounded,
};

Widget CurrentWeather(
  String icon,
  String temp,
) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          '$temp C°',
          style: const TextStyle(
            fontSize: 46,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}
