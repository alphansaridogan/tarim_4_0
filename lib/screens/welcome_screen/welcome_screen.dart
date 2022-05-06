import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/app_bar_widget.dart';
import 'package:tarim_4_0/config/widget/custompainters/elips_painter.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/welcome_screen/welcome_screen_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<WelcomeScreenModel>.reactive(
      viewModelBuilder: () => WelcomeScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Constants.green,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: AppBarWidget(
                size: size,
                title: "Hoş Geldiniz",
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Container(
                    width: size.width * 0.96,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: size.height * 0.06,
                          ),
                          const Text(
                            "Devam etmek için giriş yapmanız gerekmektedir!",
                            style: Constants.subtitle1,
                          ),
                          SizedBox(
                            height: size.height * 0.16,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: Constants.lightGreen,
                            onPressed: () {},
                            child: const Text("Üye Ol"),
                          ),
                          const SizedBox(height: 20),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: Constants.white,
                            onPressed: () {},
                            child: const Text("Giriş Yap"),
                          ),
                        ],
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Constants.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    right: 100,
                    child: Container(
                      child: CustomPaint(
                        painter: ElipsPainter(
                          left: 15,
                          top: 15,
                          bottom: 150,
                          right: 150,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    right: 100,
                    child: Container(
                      child: CustomPaint(
                        painter: ElipsPainter(
                          left: 15,
                          top: 15,
                          bottom: 60,
                          right: 60,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    right: 135,
                    child: Container(
                      child: CustomPaint(
                        painter: ElipsPainter(
                          left: 15,
                          top: 15,
                          bottom: 40,
                          right: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
