import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/app_bar_widget.dart';
import 'package:tarim_4_0/config/widget/button_widget.dart';
import 'package:tarim_4_0/config/widget/logo_button_widget.dart';
import 'package:tarim_4_0/config/widget/sub_main_widget.dart';
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
              child: SubMainWidget(
                size: size,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    const Text(
                      "Devam etmek için giriş yapmanız gerekmektedir!",
                      style: Constants.subtitle2,
                    ),
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                    ButtonWidget(
                      size: size,
                      height: 0.05,
                      color: Constants.lightGreen,
                      title: 'Üye Ol',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sing_up');
                      },
                    ),
                    const SizedBox(height: 20),
                    ButtonWidget(
                      size: size,
                      height: 0.05,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      title: "Giriş Yap",
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LogoButtonWidget(
                          image: Image.asset(
                            "assets/google.png",
                            scale: 7,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        LogoButtonWidget(
                          onTap: () {},
                          image: Image.asset(
                            "assets/facebook.png",
                            scale: 7,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
