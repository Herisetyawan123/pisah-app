import 'package:flutter/material.dart';
import 'package:pisah_app/component/profile_user.dart';
import 'package:pisah_app/theme/theme.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width - 20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileWidget(
            width: 40,
            height: 40,
            image: DecorationImage(
              image: AssetImage("assets/profile/img_profile1.png"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jorge Watson",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2 hours ago",
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 90,
                child: Text(
                  "Lorem, ipsum dolor sit amet consectetur adipisicing elit.",
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
