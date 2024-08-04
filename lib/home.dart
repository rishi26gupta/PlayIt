import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:music_player/data/const.dart';
import 'package:music_player/pages/page1.dart';
import 'package:music_player/pages/page2.dart';
import 'package:music_player/pages/page3.dart';
import 'package:music_player/pages/page4.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int  selected_page = 0;

  List<Widget> PageList = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    // PlaylistScreen()
    // MusicPlayer(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(),
          endDrawer: CustomDrawer(),
          extendBody: true,
          backgroundColor: backgroundColor,
          // body: PageList[selected_page],
          body: PageTransitionSwitcher(
            child: PageList[selected_page],
            duration: Duration(milliseconds: 400),
            transitionBuilder: (child, primary, secoundary) =>
                FadeThroughTransition(
              fillColor: backgroundColor,
              animation: primary,
              secondaryAnimation: secoundary,
              child: child,
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: backgroundColor.withOpacity(0.8),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'search',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.playlist_play_rounded,
                  ),
                  label: 'Your Library'),
              BottomNavigationBarItem(
                  icon: Image.asset(selected_page == 3
                      ? "assets/i1_white.png"
                      : "assets/i1_grey.png"),
                  label: 'premium'),
            ],
            currentIndex: selected_page,
            onTap: (int index) {
              setState(
                () {
                  selected_page = index;
                },
              );
            },
            selectedIconTheme:
                const IconThemeData(size: 30, color: Colors.white),
            unselectedIconTheme: const IconThemeData(
                size: 30, color: Color.fromRGBO(117, 117, 117, 1)),
            selectedLabelStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade600,
            unselectedLabelStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      width: 250,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.pink.shade200,
            child: const Text(
              "R",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Rishi",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "View profile",
            style: TextStyle(fontSize: 10, color: Colors.grey.shade400),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: .5,
            color: Colors.grey.shade600,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: const Row(
              children: [
                Icon(
                  Icons.electric_bolt_outlined,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "What's new",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: const Row(
              children: [
                Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Listening history",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: const Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
