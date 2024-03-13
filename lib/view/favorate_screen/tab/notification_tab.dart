import 'package:flutter/material.dart';

import 'package:instagram_clone/view/favorate_screen/widget/custom_notification_likedcard.dart';

class NotificationTab extends StatefulWidget {
  const NotificationTab({super.key});

  @override
  State<NotificationTab> createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
            child: Text('Follow request'),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CustomLikedCards(
              index: index + 1,
            ),
            itemCount: 10,
          )
        ],
      ),
    );
  }
}
