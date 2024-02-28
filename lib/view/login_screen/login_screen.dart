import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/core/constant/global_widget/global_widget_button.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';
import 'package:instagram_clone/view/bottom_navigation/bottom_navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // insta name pic
                Image.asset(ImageConstant.appnamepng),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  // text form filed for username
                  controller: nameController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Username",
                      fillColor: ColorsConstants.primaryGrey,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorsConstants.primaryBlack.withOpacity(.1)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorsConstants.primaryBlack
                                  .withOpacity(.4)))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //text form field for password
                  controller: passController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: ColorsConstants.primaryGrey,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorsConstants.primaryBlack.withOpacity(.1)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorsConstants.primaryBlack
                                  .withOpacity(.4)))),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password",
                          style: TextStyle(color: ColorsConstants.primaryblue),
                        ))
                  ],
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigation(),
                        ),
                        (route) => false);
                  },
                  text: "Log in",
                  BottonColors: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? ColorsConstants.primaryblue
                      : ColorsConstants.primaryblue.withOpacity(.4),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageConstant.fbIcon),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Log in with Facebook",
                      style: TextStyle(
                          color: ColorsConstants.primaryblue,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Divider(
                        endIndent: 30,
                      ),
                    )),
                    Text("OR",
                        style: TextStyle(
                            color:
                                ColorsConstants.primaryBlack.withOpacity(.4))),
                    Expanded(
                        child: Container(
                      child: Divider(
                        indent: 30,
                      ),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(
                            color:
                                ColorsConstants.primaryBlack.withOpacity(.4))),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: ColorsConstants.primaryblue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Instagram or Facebook",
            style:
                TextStyle(color: ColorsConstants.primaryBlack.withOpacity(.4)),
          ),
        ),
      ),
    );
  }
}
