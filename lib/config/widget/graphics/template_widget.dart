import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tarim_4_0/constants/constants.dart';

class TemplateWidget extends StatelessWidget {
  double template;
  TemplateWidget({
    Key? key,
    required this.template,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 3500,
      enableLoadingAnimation: true,
      axes: <RadialAxis>[
        RadialAxis(
            minimum: -10,
            maximum: 60,
            interval: 10,
            minorTicksPerInterval: 9,
            showAxisLine: false,
            radiusFactor: 0.9,
            labelOffset: 8,
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: -50,
                  endValue: 0,
                  startWidth: 0.265,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.265,
                  color: Color.fromARGB(189, 0,0,255)),
              GaugeRange(
                  startValue: 0,
                  endValue: 10,
                  startWidth: 0.265,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.265,
                  color: Color.fromARGB(189, 30,144,255)),
              GaugeRange(
                  startValue: 10,
                  endValue: 30,
                  startWidth: 0.265,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.265,
                  color: Color.fromARGB(189, 230, 230, 230)),
              GaugeRange(
                  startValue: 30,
                  endValue: 40,
                  startWidth: 0.265,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.265,
                  color: Color.fromARGB(189, 230, 200, 200)),
              GaugeRange(
                  startValue: 40,
                  endValue: 50,
                  startWidth: 0.265,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.265,
                  color: Color.fromARGB(153, 255, 0, 0)),
              GaugeRange(
                  startValue: 50,
                  endValue: 60,
                  startWidth: 0.265,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.265,
                  color: Color.fromARGB(190, 255, 0, 0)),
            ],
            annotations: <GaugeAnnotation>[
              const GaugeAnnotation(
                  angle: 90,
                  positionFactor: 0.35,
                  widget: Text('Sıcaklık °C',
                      style: TextStyle(color: Constants.black, fontSize: 16))),
              GaugeAnnotation(
                angle: 90,
                positionFactor: 0.8,
                widget: Text(
                  '$template',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
            pointers: <GaugePointer>[
              NeedlePointer(
                value: template,
                needleStartWidth: 1,
                needleEndWidth: 8,
                animationType: AnimationType.easeOutBack,
                enableAnimation: true,
                animationDuration: 1200,
                knobStyle: const KnobStyle(
                    knobRadius: 0.09,
                    borderColor: Constants.black,
                    color: Colors.white,
                    borderWidth: 0.05),
                tailStyle: const TailStyle(
                    color: Constants.black, width: 8, length: 0.2),
                needleColor: Constants.black,
              )
            ],
            axisLabelStyle: GaugeTextStyle(fontSize: 12),
            majorTickStyle: const MajorTickStyle(
                length: 0.25, lengthUnit: GaugeSizeUnit.factor),
            minorTickStyle: const MinorTickStyle(
                length: 0.13, lengthUnit: GaugeSizeUnit.factor, thickness: 1))
      ],
    );
  }
}
