import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/app_bar_widget.dart';
import 'package:tarim_4_0/config/widget/button_widget.dart';
import 'package:tarim_4_0/config/widget/flutter_toals.dart';
import 'package:tarim_4_0/config/widget/sub_main_widget.dart';
import 'package:tarim_4_0/config/widget/text_field_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/sing_up_screen/sing_up_screen_model.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<SingUpScreenModel>.reactive(
      viewModelBuilder: () => SingUpScreenModel(),
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
                    title: "Üye Ol",
                    subTitle: "Başlamadan önce yeni hesap oluştur",
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: SubMainWidget(
                      size: size,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: SizedBox(
                          height: constraints.maxHeight * 0.72,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              TextFieldWidget(
                                size: size,
                                title: 'Ad Soyad',
                                controller: model.controllerName,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldWidget(
                                title: 'E-Mail',
                                size: size,
                                controller: model.controllerEmail,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldWidget(
                                obscureText: true,
                                title: 'Şifre',
                                size: size,
                                controller: model.controllerPassword,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldWidget(
                                obscureText: true,
                                title: 'Şifre Tekrar',
                                size: size,
                                controller: model.controllerPasswordControl,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ButtonWidget(
                                size: size,
                                height: 0.05,
                                color: Constants.lightGreen,
                                onPressed: () {
                                  model.createdPerson().then((value) {
                                    return Navigator.pushNamed(
                                        context, '/login');
                                  }).catchError((dynamic error) {
                                    if (error.code.contains("unknown")) {
                                      FlutterToastWidget.buildErrorMessage(
                                          "Bütün alanların dolu olması gerekmektedir");
                                    } else if (error.code
                                        .contains("invalid-email")) {
                                      FlutterToastWidget.buildErrorMessage(
                                          "Mail adresi geçersizdir");
                                    } else if (error.code
                                        .contains("weak-password")) {
                                      FlutterToastWidget.buildErrorMessage(
                                          "Parola en az 6 karakter olması gerekmektedir");
                                    } else if (model.controllerPassword !=
                                        model.controllerPasswordControl) {
                                      FlutterToastWidget.buildErrorMessage(
                                          "Girilen parolalar uyuşmamaktadır");
                                    }
                                  });
                                },
                                title: 'Üye Ol',
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Zaten hesabın var mı?"),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                    child: Text(
                                      'Giriş Yap',
                                      style: Constants.headline2.apply(
                                          color:
                                              Constants.green.withAlpha(125)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          );
        }),
      ),
    );
  }
}
