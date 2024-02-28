import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';

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
        title: Image.asset(ImageConstant.appnamepng),
        actions: [
          Image.asset("asset/image/IGTV.png"),
          SizedBox(
            width: 10,
          ),
          Image.asset("asset/image/Messanger.png"),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
