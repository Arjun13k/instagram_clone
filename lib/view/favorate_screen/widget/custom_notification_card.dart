import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/core/constant/global_widget/global_widget_button.dart';

class CustomNotificationCard extends StatefulWidget {
  const CustomNotificationCard({super.key});

  @override
  State<CustomNotificationCard> createState() => _CustomNotificationCardState();
}

class _CustomNotificationCardState extends State<CustomNotificationCard> {
  @override
  Widget build(BuildContext context) {
    List postCricle = ["", ""];
    bool isFollow = true;
    bool isAlreadyfollowing;

    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          postCricle.length < 2
              ? CircleAvatar(
                  radius: 22,
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                    ),
                    CircleAvatar(
                      radius: 16,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: ColorsConstants.primarywhite,
                          child: CircleAvatar(
                            radius: 16,
                          ),
                        ))
                  ],
                ),
          SizedBox(
            width: 12,
          ),
          Text("Karena liked your photo. 1h"),
          Spacer(),
          isFollow
              ? CustomButton(
                  verticalPadding: 5, horizontalPadding: 20, text: "follow")
              : Container(
                  height: 44,
                  width: 44,
                  color: Colors.black,
                )
        ],
      ),
    );
  }
}
