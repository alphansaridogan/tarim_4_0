import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/screens.dart';

class MainViewModel extends BaseViewModel {
  init() {}

  static const String routeName = '/MainView';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => MainView(),
      settings: const RouteSettings(name: routeName),
    );
  }

  final pageController = PageController();

  int currentPage = 0;

  int currentPageFunc(int index) {
    return currentPage = index;
  }

  int pageControl(int index) {
    pageController.jumpToPage(index);
    return currentPage = index;
  }

  page(int index) {
    return currentPage = index;
  }
}
