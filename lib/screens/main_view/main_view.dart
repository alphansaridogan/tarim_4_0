import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:tarim_4_0/screens/suggestions_screen/suggestions_screen.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen.dart';
import 'package:tarim_4_0/screens/iot_screen/iot_screen.dart';
import 'package:tarim_4_0/screens/shop_screen/shop_screen.dart';

class MainView extends StatefulWidget {
  @override
  _MainView createState() => _MainView();
}

class _MainView extends State<MainView> {

  @override
  void initState() {
    MainView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        body: PageView(
          controller: model.pageController,
          children: const [
            HomeScreen(),
            SuggestionsScreen(),
            ShopScreen(),
            IotScreen(),
          ],
          onPageChanged: (index) {
            setState(() => model.currentPage = index);
          },
        ),
        bottomNavigationBar: BottomBar(
          selectedIndex: model.currentPage,
          showActiveBackgroundColor: true,
          onTap: (int index) {
            model.pageController.jumpToPage(index);
            setState(() => model.currentPage = index);
          },
          items: <BottomBarItem>[
            BottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Ana Sayfa'),
              activeColor: Colors.greenAccent.shade700,
              darkActiveColor: Colors.greenAccent.shade400,
            ),
            BottomBarItem(
              icon: const Icon(Icons.assessment),
              title: const Text('Öneriler'),
              activeColor: Colors.red,
              darkActiveColor: Colors.red.shade400,
            ),
            BottomBarItem(
              icon: const Icon(Icons.shopping_cart),
              title: const Text('Mağaza'),
              activeColor: Colors.greenAccent.shade700,
              darkActiveColor: Colors.greenAccent.shade400,
            ),
            BottomBarItem(
              icon: const Icon(Icons.pie_chart),
              title: const Text('4.0'),
              activeColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
