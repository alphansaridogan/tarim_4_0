import 'package:flutter/material.dart';

TextStyle titleFont= const TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 18);
TextStyle infoFont=  TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18);
Widget AdittionalInfo(
    String wind,
    String humidity,
    String feels_like,
    String clouds,
    ) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
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
              children:  [
                Text('Nem',
                  style: titleFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Rüzgar',
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text('%$humidity',
                  style: infoFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('$wind',
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text('Hissedilen',
                  style: titleFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Bulut',
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text('$feels_like C°',
                  style: infoFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('%$clouds',
                  style: infoFont,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}