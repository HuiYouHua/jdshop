import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jdshop/pages/tabs/Cart.dart';
import 'package:jdshop/pages/tabs/Category.dart';
import 'package:jdshop/pages/tabs/Home.dart';
import 'package:jdshop/pages/tabs/User.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currrentIndex = 0;

  List _pageList = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('jdshop'),
        ),
        body: _pageList[_currrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currrentIndex,
          onTap: (index) {
            setState(() {
              _currrentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: '分类',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '购物车',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: '我的',
            ),
          ],
        )
    );
  }
}
