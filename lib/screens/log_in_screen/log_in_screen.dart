import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/app_bar_widget.dart';
import 'package:tarim_4_0/config/widget/button_widget.dart';
import 'package:tarim_4_0/config/widget/flutter_toals.dart';
import 'package:tarim_4_0/config/widget/sub_main_widget.dart';
import 'package:tarim_4_0/config/widget/text_field_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/log_in_screen/log_in_screen_model.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<LogInScreenModel>.reactive(
      viewModelBuilder: () => LogInScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Constants.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: AppBarWidget(
                    size: size,
                    title: "Giriş Yap",
                    subTitle: "Tekrar Hoşgeldiniz!",
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SubMainWidget(
                    size: size,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Container(
                        height: constraints.maxHeight * 0.72,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            TextFieldWidget(
                              size: size,
                              title: 'E-Mail',
                              controller: model.controllerMail,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFieldWidget(
                              obscureText: true,
                              size: size,
                              title: 'Şifre',
                              controller: model.controllerPassword,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ButtonWidget(
                              size: size,
                              height: 0.05,
                              color: Constants.lightGreen,
                              onPressed: () {
                                model.signIn().then((value) {
                                  return Navigator.pushNamed(
                                      context, '/MainView');
                                }).catchError((dynamic error) {
                                  if (error.code.contains("invalid-email")) {
                                    FlutterToastWidget.buildErrorMessage(
                                        "Mail adresi geçersisdir");
                                  } else if (error.code
                                      .contains("user-not-found")) {
                                    FlutterToastWidget.buildErrorMessage(
                                        "Böyle bir kullanıcı bulunamadı");
                                  } else if (error.code
                                      .contains("wrong-password")) {
                                    FlutterToastWidget.buildErrorMessage(
                                        "Parola yanlış");
                                  } else if (error.code.contains("unknown")) {
                                    FlutterToastWidget.buildErrorMessage(
                                        "E-mail ya da parola alanı boş olamaz!");
                                  }
                                });
                              },
                              title: 'Giriş Yap',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Hesabın yok mu?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/sing_up');
                                  },
                                  child: Text(
                                    'Üye Ol',
                                    style: Constants.headline2.apply(
                                        color: Constants.green.withAlpha(125)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
