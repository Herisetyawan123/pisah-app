import 'package:flutter/material.dart';
import 'package:pisah_app/screens/beranda/component/header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("add"),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.notifications),
          //   title: Text("Notif"),
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.people),
          //   title: Text("Profile"),
          // ),
        ],
      ),
    );
  }
}
