import 'package:flutter/material.dart';
import 'package:instagram/homePage.dart';
import 'package:instagram/postPage.dart';
import 'package:instagram/profilePage.dart';
import 'package:instagram/reelPage.dart';
import 'package:instagram/search.dart';

class BottomNavigationBarr extends StatefulWidget {
  BottomNavigationBarr({
    super.key,
  });

  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int currentIndex = 0;
  final tabs = [
    HomePage(),
    SearchPage(),
    PostPage(),
    ReelsPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        elevation: 0,
        selectedFontSize: 12.0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        // currentIndex: currentindex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: Colors.black,
                size: 29,
              ),
              label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
                color: Colors.black,
                size: 29,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "lib/icons/post.png",
                height: 24,
              ),
              label: "Uploard"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "lib/icons/reels.png",
                height: 24,
              ),
              // Icon(
              //   Icons.home_rounded,
              //   color: Colors.black,
              // ),
              label: "Reels"),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/person1.jpg"),
              ),
              label: "Profile"),
        ],
      ),
      body: tabs[currentIndex],
    );
  }
}
