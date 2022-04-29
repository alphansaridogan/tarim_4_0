import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:tarim_4_0/screens/%20suggestions_screen/suggestions_screen.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen.dart';
import 'package:tarim_4_0/screens/iot_screen/iot_screen.dart';
import 'package:tarim_4_0/screens/shop_screen/shop_screen.dart';


class MainView extends StatefulWidget {
  @override
  _MainView createState() => _MainView();
}

class _MainView extends State<MainView> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          SuggestionsScreen(),
          ShopScreen(),
          IotScreen(),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        showActiveBackgroundColor: true,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Ana Sayfa'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400,
          ),
          BottomBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Öneriler'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400,
          ),
          BottomBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Mağaza'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400,
          ),
          BottomBarItem(
            icon: Icon(Icons.pie_chart),
            title: Text('4.0'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}