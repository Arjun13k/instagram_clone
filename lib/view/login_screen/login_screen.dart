import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/core/constant/global_widget/global_widget_button.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageConstant.appnamepng),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Username",
                    fillColor: Color.fromARGB(255, 235, 229, 229),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Color.fromARGB(255, 235, 229, 229),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
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
              CustomButton(text: "Log in"),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(color: Colors.black.withOpacity(.4))),
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Instagram or Facebook",
            style: TextStyle(color: Colors.black.withOpacity(.4)),
          ),
        ),
      ),
    );
  }
}
