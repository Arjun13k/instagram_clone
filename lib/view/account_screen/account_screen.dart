import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/core/constant/global_widget/global_widget_button.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';
import 'package:instagram_clone/view/login_screen/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstant.appnamepng),
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(ImageConstant.profilepic),
                radius: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "arj__u",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                text: "log in",
                BottonColors: ColorsConstants.primaryblue,
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text(
                    'Switch Account',
                    style: TextStyle(
                      color: ColorsConstants.primaryblue,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Dont have an account?",
              style: TextStyle(
                  color: ColorsConstants.primaryBlack.withOpacity(.4)),
              children: [
                TextSpan(
                    text: "Sign up",
                    style: TextStyle(
                        color: ColorsConstants.primaryBlack,
                        fontWeight: FontWeight.bold))
              ]),
        ),
      ),
    );
  }
}
