import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:pisah_app/screens/beranda/component/header.dart';
import 'package:pisah_app/theme/theme.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Trending",
                style: robotStyle.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                ),
                // textAlign: TextAlign.start,
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 195.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: 300,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        image: DecorationImage(
                          image: AssetImage("assets/slider_trending/slide.jpg"),
                        ),
                      ),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0),
                                Color.fromRGBO(0, 0, 0, 0.5),
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Spacer(),
                                  // Text("data"),
                                  Image.asset(
                                    "assets/logo/trending.png",
                                    width: 35,
                                    height: 72,
                                  ),
                                ],
                              ),
                              // Spacer(),
                              Container(
                                child: Text(
                                  "Karyawan KPK curi  Barang Bukti Emas Batangan",
                                  style: robotStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Local News",
                style: robotStyle.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                ),
                // textAlign: TextAlign.start,
              ),
            ),
            Column(
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
              ],
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
