import 'package:fluttertoast/fluttertoast.dart';
import 'package:tarim_4_0/constants/constants.dart';

class FlutterToastWidget {
  static void buildErrorMessage(String text) {
    Fluttertoast.showToast(
      msg: text,
      backgroundColor: Constants.green,
    );
  }
}
