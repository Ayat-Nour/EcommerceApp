import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task5_ecommerce_project/ForHomeTabs/ProfilePage.dart';
import 'package:task5_ecommerce_project/ForHomeTabs/ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex=0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> selectedPage =[
    ShopPage(),
    ShopPage(),
    ShopPage(),
    ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shop),
            backgroundColor: Colors.white,
            label: "Shop",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              backgroundColor: Colors.white,
            label: "Favorites",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              backgroundColor: Colors.white,
            label: "Messages",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.white,
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.black54,
        currentIndex: selectedIndex,
        elevation: 0,
        iconSize: 25,
        onTap: _onItemTapped,

      ),
      body: Center(
        child: selectedPage.elementAt(selectedIndex),
      )
    );
  }
}
