import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:tarim_4_0/constants/constants.dart';

class IrrigationSettingWidget extends StatelessWidget {
  double irrigationSettingAmount;
  String annotationValue;

  IrrigationSettingWidget({
    Key? key,
    required this.irrigationSettingAmount,
    required this.annotationValue,
  }) : super(key: key);

  void handlePointerValueChanged(double value) {
    setPointerValue(value);
  }

  void handlePointerValueChanging(ValueChangingArgs args) {
    if ((args.value.toInt() - irrigationSettingAmount).abs() > 20) {
      args.cancel = true;
      if (irrigationSettingAmount > 50) {
        const double value = 100;
        setPointerValue(value);
      }
    }
  }

  void setPointerValue(double value) {
    irrigationSettingAmount = value;
    int _currentValue = irrigationSettingAmount.toInt();
    _currentValue = _currentValue >= 100 ? 100 : _currentValue;
    annotationValue = '$_currentValue';
  }

  bool _enableDragging = true;
  double _annotationFontSize = 30;
  double _firstMarkerSize = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            radiusFactor: 0.8,
            axisLineStyle: AxisLineStyle(
                color: Colors.grey.shade300,
                thickness: 0.075,
                thicknessUnit: GaugeSizeUnit.factor),
            showLabels: false,
            showTicks: false,
            startAngle: 270,
            endAngle: 270,
            pointers: <GaugePointer>[
              RangePointer(
                  width: 0.075,
                  value: irrigationSettingAmount,
                  cornerStyle: CornerStyle.bothCurve,
                  color:
                      _enableDragging ? Constants.green : Constants.lightGreen,
                  sizeUnit: GaugeSizeUnit.factor),
              MarkerPointer(
                value: irrigationSettingAmount,
                onValueChanged: handlePointerValueChanged,
                onValueChangeEnd: handlePointerValueChanged,
                onValueChanging: handlePointerValueChanging,
                elevation: 5,
                enableDragging: _enableDragging,
                color: Constants.white,
                markerHeight: _firstMarkerSize,
                markerWidth: _firstMarkerSize,
                markerType: MarkerType.circle,
              )
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  widget: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        annotationValue,
                        style: TextStyle(
                          fontSize: _annotationFontSize,
                        ),
                      ),
                      const Text(
                        ' %',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  angle: 90)
            ],
          ),
        ],
      ),
    );
  }
}
