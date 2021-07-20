import 'package:flutter/material.dart';
import 'package:pisah_app/screens/beranda/page/detail/comment_news.dart';
import 'package:pisah_app/theme/theme.dart';

class ThumbnailImage extends StatelessWidget {
  const ThumbnailImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: greyColor.withOpacity(0.2),
          ),
          top: BorderSide(
            color: greyColor.withOpacity(0.2),
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Deswita",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Jumat, 9 April 2021 | 18:28 WIB",
                  style: greyTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width - 25,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: greyColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.report,
                      color: greyColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "253",
                      style: greyTextStyle,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommentPage()),
                        );
                      },
                      child: Icon(
                        Icons.comment,
                        color: greyColor,
                      ),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    // Icon(
                    //   Icons.link_rounded,
                    //   color: greyColor,
                    // ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
