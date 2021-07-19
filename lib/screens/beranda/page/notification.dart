import 'package:flutter/material.dart';
import 'package:pisah_app/component/profile_user.dart';
import 'package:pisah_app/screens/beranda/component/notif/notif_component.dart';
import 'package:pisah_app/theme/theme.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Pemberitahuan",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.message,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
              title: MessageWidget(
                image: "assets/profile/img_profile1.png",
              ),
            ),
            ListTile(
              title: MessageWidget(
                image: "assets/profile/img_profile2.png",
              ),
            ),
            ListTile(
              title: MessageWidget(
                image: "assets/profile/img_profile3.png",
              ),
            ),
            ListTile(
              title: MessageWidget(
                image: "assets/profile/img_profile4.png",
              ),
            ),
            ListTile(
              title: MessageWidget(
                image: "assets/profile/img_profile5.png",
              ),
            ),
            ListTile(
              title: MessageWidget(
                image: "assets/profile/img_profile6.png",
              ),
            ),
          ]).toList(),
        ),
      ),
    );
  }
}
