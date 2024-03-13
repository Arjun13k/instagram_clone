import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/view/favorate_screen/tab/notification_tab.dart';
import 'package:instagram_clone/view/favorate_screen/widget/custom_notification_card.dart';
import 'package:instagram_clone/view/favorate_screen/widget/custom_notification_likedcard.dart';

class Favorate extends StatefulWidget {
  const Favorate({super.key});

  @override
  State<Favorate> createState() => _FavorateState();
}

class _FavorateState extends State<Favorate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: TabBar(
                indicatorWeight: 1,
                unselectedLabelColor:
                    ColorsConstants.primaryBlack.withOpacity(.4),
                labelColor: ColorsConstants.primaryBlack,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorsConstants.primaryBlack,
                tabs: [
                  Text(
                    'Following',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('You',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ]),
          ),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.black,
          ),
          Container(
            child: NotificationTab(),
          )
        ]),
      ),
    );
  }
}
