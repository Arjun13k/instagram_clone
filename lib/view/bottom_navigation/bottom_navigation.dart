import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';
import 'package:instagram_clone/view/account_screen/account_screen.dart';
import 'package:instagram_clone/view/favorate_screen/favorate_screen.dart';
import 'package:instagram_clone/view/home_screen/home_screen.dart';
import 'package:instagram_clone/view/post_screen/post_screen.dart';
import 'package:instagram_clone/view/profile_screen/profile_screen.dart';
import 'package:instagram_clone/view/search_screen/search_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List screen = [
    HomeScreen(),
    Search(),
    Container(
      color: Colors.white,
    ),
    Favorate(),
    Profile()
  ];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[screenIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              if (value != 2) {
                screenIndex = value;
                setState(() {});
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostScreen(),
                    ));
              }
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: screenIndex,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home_filled),
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(Icons.add),
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  label: "favorate"),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    backgroundImage: NetworkImage(ImageConstant.profilepic),
                    radius: 15,
                  ),
                  label: "favorate")
            ]));
  }
}
