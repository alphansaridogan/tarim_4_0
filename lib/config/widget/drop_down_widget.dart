import 'package:flutter/material.dart';

import 'package:tarim_4_0/constants/constants.dart';

class DropDownWidget extends StatelessWidget {
  List<String> list;
  String title;
  double height;
  double width;
  double radius;
  double iconSize;
  String? value;
  Color borderColor;
  void Function(String?)? onChanged;
  bool isExpanded;
  TextStyle textStyle;

  DropDownWidget({
    Key? key,
    required this.list,
    required this.title,
    this.height = 0.06,
    this.width = 0.80,
    this.radius = 15,
    this.iconSize = 35.0,
    this.value,
    this.borderColor = Colors.black38,
    required this.onChanged,
    this.isExpanded = true,
    this.textStyle = Constants.subtitle1,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * height,
      width: size.width * width,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
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
            isExpanded: isExpanded,
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
                  child: Text(
                    value,
                    style: textStyle,
                  ),
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
