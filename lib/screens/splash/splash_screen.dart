import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/custompainters/background_paint.dart';
import 'package:tarim_4_0/config/widget/custompainters/elips_painter.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/splash/splash_screen_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<SplashScreenModel>.reactive(
      viewModelBuilder: () => SplashScreenModel(),
      onModelReady: (model) => model.initialise(context),
      builder: (context, model, child) => Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Constants.white,
            child: CustomPaint(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.15,
                  ),
                  Image.asset(
                    "assets/logo.png",
                    scale: size.width * 0.01,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "TARIM 4.0",
                    style: Constants.headline1.apply(
                        fontSizeDelta: 10,
                        color: Colors.black.withOpacity(0.4)),
                  ),
                ],
              ),
              painter: BackgroundPaint(),
            ),
          ),
          Positioned(
            top: -50,
            left: -80,
            child: Container(
              child: CustomPaint(
                  painter:
                      ElipsPainter(left: 150, top: 150, bottom: 10, right: 10)),
            ),
          ),
          Positioned(
            top: 10,
            left: 70,
            child: CustomPaint(
              painter: ElipsPainter(left: 50, bottom: 10, right: 10, top: 50),
            ),
          ),
          Positioned(
            top: 70,
            left: 50,
            child: CustomPaint(
              painter: ElipsPainter(left: 30, bottom: 10, right: 10, top: 30),
            ),
          ),
        ],
      ),
    );
  }
}
