import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:tarim_4_0/constants/constants.dart';

class SoilMoistureWidget extends StatelessWidget {
  double soilMoisture;
  SoilMoistureWidget({
    Key? key,
    required this.soilMoisture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
            showLabels: false,
            showTicks: false,
            startAngle: 270,
            endAngle: 270,
            radiusFactor: 0.8,
            axisLineStyle: const AxisLineStyle(
                thicknessUnit: GaugeSizeUnit.factor, thickness: 0.25),
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  angle: 180,
                  widget: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          '$soilMoisture',
                          style: const TextStyle(
                              fontFamily: 'Times',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic),
                        ),
                        const Text(
                          ' %',
                          style: TextStyle(
                              fontFamily: 'Times',
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  )),
            ],
            pointers: <GaugePointer>[
              RangePointer(
                  value: soilMoisture,
                  cornerStyle: CornerStyle.bothCurve,
                  enableAnimation: true,
                  animationDuration: 1200,
                  sizeUnit: GaugeSizeUnit.factor,
                  gradient: const SweepGradient(colors: <Color>[
                    Constants.lightBlueAccent,
                    Constants.blue,
                  ], stops: <double>[
                    0.55,
                    0.75
                  ]),
                  color: Color(0xFF00A8B5),
                  width: 0.25),
            ]),
      ],
    );
  }
}
