import 'package:flutter/material.dart';
import 'package:instagram_clone/view/favorate_screen/widget/custom_notification_card.dart';

class CustomLikedCards extends StatelessWidget {
  const CustomLikedCards({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "titel",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children: List.generate(4, (index) => CustomNotificationCard()),
          )
        ],
      ),
    );
  }
}
