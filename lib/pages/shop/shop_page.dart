import 'package:flutter/material.dart';
import 'package:flutter_food/pages/shop/shop_list_page.dart';

class ShopMainPage extends StatefulWidget {
  const ShopMainPage({Key? key}) : super(key: key);

  @override
  _ShopMainPageState createState() => _ShopMainPageState();
}

class _ShopMainPageState extends State<ShopMainPage> {
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'ORDER',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      body: _selectedBottomNavIndex == 0
          ? ShopListPage()
          : Container(
        child: Center(
          child: Text('YOUR ORDER',
              style: Theme.of(context).textTheme.headline1),
        ),
      ),
    );
  }
}