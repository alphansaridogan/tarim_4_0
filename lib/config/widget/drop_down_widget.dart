import 'package:flutter/material.dart';

import 'package:tarim_4_0/constants/constants.dart';

class DropDownWidget extends StatelessWidget {
  List<String> list;
  String title;
  double height;
  double radius;
  double iconSize;
  String? value;
  void Function(String?)? onChanged;
  DropDownWidget({
    Key? key,
    required this.list,
    required this.title,
    this.height = 0.06,
    this.radius = 15,
    this.iconSize = 35.0,
    this.value,
    required this.onChanged,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * height,
      width: size.width * 0.80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        color: Constants.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            value: value,
            borderRadius: BorderRadius.circular(25),
            underline: const SizedBox(),
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down, size: iconSize),
            hint: Text(
              title,
              style: Constants.subtitle1,
            ),
            items: list.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Text(value),
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
