import 'package:flutter/material.dart';

class ScreenImageCategory extends StatelessWidget {
  ScreenImageCategory({
    super.key,
    this.isEven = false,
  });
  final List imageList = [
    "https://images.pexels.com/photos/18053574/pexels-photo-18053574/free-photo-of-a-man-standing-on-a-boardwalk-and-taking-a-picture-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/19892685/pexels-photo-19892685/free-photo-of-a-small-owl-sitting-on-a-branch-in-the-trees.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5880966/pexels-photo-5880966.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20044831/pexels-photo-20044831/free-photo-of-woman-in-white-blouse-posing-with-bay-horse-on-the-stud-farm-paddock.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/13939465/pexels-photo-13939465.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20339253/pexels-photo-20339253/free-photo-of-woman-wearing-dress-standing-by-the-lake.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  ];
  final bool isEven;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isEven
            ? Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).width * .33,
                        width: MediaQuery.sizeOf(context).width * .33,
                        child: Image.network(
                          "https://images.pexels.com/photos/19992967/pexels-photo-19992967/free-photo-of-a-statue-of-a-hand-holding-a-dove-with-a-dove-on-it.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).width * .33,
                        width: MediaQuery.sizeOf(context).width * .33,
                        child: Image.network(
                          "https://images.pexels.com/photos/17225860/pexels-photo-17225860/free-photo-of-a-tower-with-a-clock-on-top-of-it.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.sizeOf(context).width * .66,
                      child: Image.network(
                        "https://images.pexels.com/photos/20330737/pexels-photo-20330737/free-photo-of-white-dog-sitting-on-grass.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.sizeOf(context).width * .66,
                      child: Image.network(
                        "https://images.pexels.com/photos/19992967/pexels-photo-19992967/free-photo-of-a-statue-of-a-hand-holding-a-dove-with-a-dove-on-it.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).width * .33,
                        width: MediaQuery.sizeOf(context).width * .33,
                        child: Image.network(
                          "https://images.pexels.com/photos/17225860/pexels-photo-17225860/free-photo-of-a-tower-with-a-clock-on-top-of-it.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).width * .33,
                        width: MediaQuery.sizeOf(context).width * .33,
                        child: Image.network(
                          "https://images.pexels.com/photos/20330737/pexels-photo-20330737/free-photo-of-white-dog-sitting-on-grass.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ],
              ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => Container(
            child: Image.network(
              imageList[index],
              fit: BoxFit.cover,
            ),
          ),
          itemCount: 6,
        )
      ],
    );
  }
}
