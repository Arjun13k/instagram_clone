import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';
import 'package:instagram_clone/dummyDb.dart';
import 'package:instagram_clone/view/home_screen/widgets/custom_card_widget.dart';
import 'package:instagram_clone/view/home_screen/widgets/custom_colum_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
        ),
        centerTitle: true,
        title: Image.asset(
          ImageConstant.appnamepng,
          scale: 1.2,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.tv)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    DummyDb.listCircle.length,
                    (index) => CustomCardWidget(
                          proPic: DummyDb.listCircle[index]["profile"],
                          userName: DummyDb.listCircle[index]["userName"],
                          isLive: DummyDb.listCircle[index]["isLive"],
                        )),
              ),
            ),
            CustomColumWidget()
          ],
        ),
      ),
    );
  }
}
