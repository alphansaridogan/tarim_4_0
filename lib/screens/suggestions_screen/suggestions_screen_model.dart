import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/suggestions_screen/suggestions_screen.dart';

class SuggestionsScreenModel extends MainViewModel {
  static const String routeName = '/suggestions';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SuggestionsScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
}
