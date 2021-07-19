import 'package:flutter/material.dart';
import 'package:pisah_app/component/profile_user.dart';
import 'package:pisah_app/theme/theme.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 15,
      ),
      height: 56,
      // decoration: BoxDecoration(color: Colors.red),
      child: Row(
        children: [
          ProfileWidget(
            width: 60,
            height: 60,
            image: DecorationImage(
              image: AssetImage(image),
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 175,
                  child: Text(
                    'Horse Horse Horse Horse Horse Horsev Horse  Horse  Horse Horse asdasdas sfjopasdkfsf sfjasodjf sdfnajsfd',
                    style: greyTextStyle.copyWith(fontSize: 12),
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
