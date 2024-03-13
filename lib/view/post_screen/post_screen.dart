import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/view/post_screen/widget/custom_tabBar.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'cancel',
                    style: TextStyle(
                        fontSize: 18, color: ColorsConstants.primaryBlack),
                  ))),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Recent', style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.arrow_drop_down_outlined)
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: ColorsConstants.primaryblue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 375,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/9526632/pexels-photo-9526632.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                      fit: BoxFit.cover)),
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsConstants.primaryBlack.withOpacity(.6)),
                    child: Icon(
                      Icons.all_inclusive_outlined,
                      color: ColorsConstants.primarywhite,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsConstants.primaryBlack.withOpacity(.6)),
                    child: Icon(
                      Icons.space_dashboard_outlined,
                      color: ColorsConstants.primarywhite,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsConstants.primaryBlack.withOpacity(.6)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.layers_sharp,
                          color: ColorsConstants.primarywhite,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SELECT MULTIPLE',
                          style: TextStyle(color: ColorsConstants.primarywhite),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                CustomTabBar(),
                CustomTabBar(),
                CustomTabBar(),
              ]),
            )
          ],
        ),
        bottomNavigationBar: TabBar(
            labelColor: ColorsConstants.primaryBlack,
            unselectedLabelColor: ColorsConstants.primaryBlack.withOpacity(.4),
            indicatorWeight: 1,
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: "Library",
              ),
              Tab(
                text: "Photo",
              ),
              Tab(
                text: "Viedo",
              )
            ]),
      ),
    );
  }
}
