import 'package:flutter/material.dart';
import 'package:pisah_app/screens/beranda/page/detail/detail_news.dart';
import 'package:pisah_app/theme/theme.dart';

class CardNews extends StatelessWidget {
  const CardNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
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
                  image: AssetImage("assets/slider_trending/kebakaran.png"),
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
                    style: robotStyle.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "10/07/2001",
                    style: robotStyle.copyWith(
                      color: greyColor,
                      fontSize: 12,
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
    );
  }
}
