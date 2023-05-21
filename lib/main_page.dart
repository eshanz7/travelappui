import 'package:flutter/material.dart';
import 'package:travelappui/constants.dart';
import 'package:travelappui/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // First Create Bottom Tab

  int _currentIndex = 0;

  static List<Widget> pages = [
    const HomePage(),
    Container(
      child: const Center(
        child: Text("Calendar",style: TextStyle(color: Colors.black),),
      ),
    ),
    Container(
      child: const Center(
        child: Text("Profile",style: TextStyle(color: Colors.black),),
      ),
    ),
    Container(
      child: const Center(
        child: Text("Settings",style: TextStyle(color: Colors.black),),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: pages[_currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
          child: Container(
            height: getScreenHeight(context) * 0.085,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                        color: Colors.black.withOpacity(0.25))
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BottomNavigationBar(
                  elevation: 0,
                  currentIndex: _currentIndex,
                  type: BottomNavigationBarType.fixed,
                  selectedFontSize: 14,
                  unselectedFontSize: 14,
                  selectedItemColor: primaryColor,
                  unselectedItemColor: Colors.grey,
                  items: [
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/home.png',
                          height: 24,
                          width: 24,
                          color: _currentIndex == 0 ? null : Colors.grey,
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/cal.png',
                          height: 24,
                          width: 24,
                          color: _currentIndex == 1 ? primaryColor : null,
                        ),
                        label: 'Calendar'),
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/profile.png',
                          height: 24,
                          width: 24,
                          color: _currentIndex ==  2 ? primaryColor : null,
                        ),
                        label: 'Profile'),
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/settings.png',
                          height: 24,
                          width: 24,

                          color: _currentIndex ==  3 ? primaryColor : null,
                        ),
                        label: 'Settings'),
                  ],
                  onTap: (int index){
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              )),
        ));
  }
}
