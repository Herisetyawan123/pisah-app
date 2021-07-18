import 'package:flutter/material.dart';
import 'package:pisah_app/component/profile_user.dart';
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
            onPressed: () {
              // handle the press
            },
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: ListTile.divideTiles(
              //          <-- ListTile.divideTiles
              context: context,
              tiles: [
                ListTile(
                  title: notificationWidget(),
                ),
                ListTile(
                  title: notificationWidget(),
                ),
                ListTile(
                  title: notificationWidget(),
                ),
                ListTile(
                  title: notificationWidget(),
                ),
                ListTile(
                  title: notificationWidget(),
                ),
                ListTile(
                  title: notificationWidget(),
                ),
                ListTile(
                  title: notificationWidget(),
                ),
                ListTile(
                  title: notificationWidget(),
                ),
              ]).toList(),
        ),
      ),
    );
  }
}

class notificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 16,
      ),
      height: 56,
      // decoration: BoxDecoration(color: Colors.red),
      child: Row(
        children: [
          ProfileWidget(
            width: 60,
            height: 60,
            image: DecorationImage(
              image: AssetImage("assets/profile/img_profile1.png"),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ronald Robertson',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  child: Text(
                    'Horse Horse Horse Horse Horse Horsev Horse  Horse  Horse Horse asdasdas sfjopasdkfsf sfjasodjf sdfnajsfd',
                    style: greyTextStyle.copyWith(fontSize: 13),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
