// import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pisah_app/screens/beranda/page/dashboard.dart';
import 'package:pisah_app/screens/beranda/page/notification.dart';
import 'package:pisah_app/screens/beranda/page/profile.dart';
import 'package:pisah_app/theme/theme.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int currentIndex = 0;

  List page = <Widget>[
    Dashboard(),
    NotificationPage(),
    NotificationPage(),
    ProfilePage(),
    ProfilePage(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            currentIndex = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MateriaButtonContainer(Icons.home, "home", 0),
                  MateriaButtonContainer(Icons.search, "Search", 1),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MateriaButtonContainer(
                      Icons.notifications, "Notification", 2),
                  MateriaButtonContainer(Icons.person, "Search", 3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton MateriaButtonContainer(icon, String text, int index) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {
        setState(() {
          currentIndex = index;
          // icon = Icons.person;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color:
                currentIndex == index ? Color(0xff757575) : Color(0xffA8A8A8),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            text,
            style: robotStyle.copyWith(
              color:
                  currentIndex == index ? Color(0xff757575) : Color(0xffA8A8A8),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
