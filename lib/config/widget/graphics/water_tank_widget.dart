import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tarim_4_0/config/widget/custompainters/water_tank_paint.dart';
import 'package:tarim_4_0/constants/constants.dart';

class WaterTankWidget extends StatelessWidget {
  WaterTankWidget({
    Key? key,
    required this.size,
    required double minimumLevel,
    required double maximumLevel,
    required double level,
  })  : _minimumLevel = minimumLevel,
        _maximumLevel = maximumLevel,
        _level = level,
        super(key: key);

  final Size size;
  final double _minimumLevel;
  final double _maximumLevel;
  double _level;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.35,
      child: SfLinearGauge(
        minimum: _minimumLevel,
        maximum: _maximumLevel,
        orientation: LinearGaugeOrientation.vertical,
        interval: 100,
        axisTrackStyle: const LinearAxisTrackStyle(
          thickness: 2,
        ),
        markerPointers: <LinearMarkerPointer>[
          LinearWidgetPointer(
            value: _level,
            enableAnimation: false,
            onChanged: (dynamic value) {
              _level = value as double;
            },
            child: Material(
              elevation: 4.0,
              shape: const CircleBorder(),
              clipBehavior: Clip.hardEdge,
              color: Constants.green,
              child: Ink(
                width: 32.0,
                height: 32.0,
                child: InkWell(
                  splashColor: Colors.grey,
                  hoverColor: Colors.blueAccent,
                  onTap: () {},
                  child: Center(
                    child: _level == _minimumLevel
                        ? Icon(Icons.keyboard_arrow_up_outlined,
                            color: Colors.white, size: 20.0)
                        : _level == _maximumLevel
                            ? Icon(Icons.keyboard_arrow_down_outlined,
                                color: Colors.white, size: 20.0)
                            : RotatedBox(
                                quarterTurns: 3,
                                child: Icon(Icons.code_outlined,
                                    color: Colors.white, size: 20.0)),
                  ),
                ),
              ),
            ),
          ),
          LinearWidgetPointer(
            value: 150,
            enableAnimation: false,
            markerAlignment: LinearMarkerAlignment.end,
            offset: 95,
            position: LinearElementPosition.outside,
            child: SizedBox(
                width: 50,
                height: 20,
                child: Center(
                    child: Text(
                  _level.toStringAsFixed(0) + ' ml',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ))),
          )
        ],
        barPointers: <LinearBarPointer>[
          LinearBarPointer(
            value: _maximumLevel,
            enableAnimation: false,
            thickness: 200,
            offset: 18,
            position: LinearElementPosition.outside,
            color: Colors.transparent,
            child: CustomPaint(
                painter: WaterTankPainter(
                    color: Constants.green,
                    waterLevel: _level,
                    maximumPoint: _maximumLevel)),
          )
        ],
      ),
    );
  }
}
