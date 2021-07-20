import 'package:flutter/material.dart';
import 'package:pisah_app/component/profile_user.dart';
import 'package:pisah_app/screens/beranda/component/detail_news.dart/comment.dart';
import 'package:pisah_app/screens/beranda/component/detail_news.dart/detal_compt.dart';
import 'package:pisah_app/theme/theme.dart';

class CommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 25,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Karyawan KPK curi  Barang Bukti Emas Batangan",
                style: robotStyle.copyWith(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              ThumbnailImage(
                image: "assets/slider_trending/slide.jpg",
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  "Comment",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              CommentSection(),
              CommentSection(),
              CommentSection(),
            ],
          ),
        ),
      ),
    );
  }
}
