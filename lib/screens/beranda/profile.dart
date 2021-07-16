import 'package:flutter/material.dart';
import 'package:pisah_app/theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_back,
            color: blueColor,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Heri Setyawan",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.monetization_on_rounded,
              color: Colors.amber,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 45),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/profile/img_profile1.png"),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 50),
              width: MediaQuery.of(context).size.width - 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "2 k",
                          style: robotStyle.copyWith(
                            color: greyColor,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Follower",
                          style: robotStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "10",
                          style: robotStyle.copyWith(
                            color: greyColor,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Following",
                          style: robotStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "10",
                          style: robotStyle.copyWith(
                            color: greyColor,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Posting",
                          style: robotStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width - 30,
                    height: 125,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 56,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/slider_trending/kebakaran.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kebakaran melahap 4 rum..",
                                style: robotStyle.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "dsfsdfds sdfsdfsd",
                                style: robotStyle.copyWith(
                                  color: greyColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width - 30,
                    height: 125,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 56,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/slider_trending/kebakaran.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kebakaran melahap 4 rum..",
                                style: robotStyle.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "dsfsdfds sdfsdfsd",
                                style: robotStyle.copyWith(
                                  color: greyColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width - 30,
                    height: 125,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 56,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/slider_trending/kebakaran.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kebakaran melahap 4 rum..",
                                style: robotStyle.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "dsfsdfds sdfsdfsd",
                                style: robotStyle.copyWith(
                                  color: greyColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width - 30,
                    height: 125,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 56,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/slider_trending/kebakaran.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kebakaran melahap 4 rum..",
                                style: robotStyle.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "dsfsdfds sdfsdfsd",
                                style: robotStyle.copyWith(
                                  color: greyColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width - 30,
                    height: 125,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 56,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/slider_trending/kebakaran.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kebakaran melahap 4 rum..",
                                style: robotStyle.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "dsfsdfds sdfsdfsd",
                                style: robotStyle.copyWith(
                                  color: greyColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "add",
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
