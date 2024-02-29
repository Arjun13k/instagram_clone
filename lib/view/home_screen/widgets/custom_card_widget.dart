import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key,
      this.isLive = false,
      required this.proPic,
      required this.userName});
  final bool isLive;
  final String userName;
  final String proPic;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 110,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        end: Alignment.bottomRight,
                        colors: [Colors.red, Colors.yellow, Colors.blue])),
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsConstants.primaryGrey),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(proPic),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: isLive == true
                      ? Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.pink, Colors.red]),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 4,
                                  color: ColorsConstants.primarywhite)),
                          child: Center(
                            child: Text(
                              "Live",
                              style: TextStyle(
                                  color: ColorsConstants.primarywhite,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      : SizedBox())
            ],
          ),
          Text(userName)
        ],
      ),
    );
  }
}
