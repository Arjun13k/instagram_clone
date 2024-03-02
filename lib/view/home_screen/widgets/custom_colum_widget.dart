import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';

class CustomColumWidget extends StatefulWidget {
  const CustomColumWidget({super.key});

  @override
  State<CustomColumWidget> createState() => _CustomColumWidgetState();
}

List<String> postpic = [
  "https://images.pexels.com/photos/18509324/pexels-photo-18509324/free-photo-of-blooming-white-buttecup-flower.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  "https://images.pexels.com/photos/9589650/pexels-photo-9589650.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  "https://images.pexels.com/photos/19859148/pexels-photo-19859148/free-photo-of-wild-roes-in-forest.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
];
int pages = 1;

class _CustomColumWidgetState extends State<CustomColumWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsConstants.primarywhite,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(ImageConstant.profilepic),
            ),
            title: Row(
              children: [
                Text("arj__u"),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.verified,
                  color: ColorsConstants.primaryblue,
                  size: 20,
                )
              ],
            ),
            subtitle: Text("Tokyo,Japan"),
            trailing: Icon(Icons.more_horiz),
          ),
          Stack(children: [
            SizedBox(
              height: 375,
              child: PageView.builder(
                onPageChanged: (value) {
                  pages = value + 1;
                  setState(() {});
                },
                itemCount: postpic.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(postpic[index]),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
                top: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorsConstants.primaryGrey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "$pages/${postpic.length}",
                    style: TextStyle(color: ColorsConstants.primarywhite),
                  ),
                ))
          ]),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.favorite_border_outlined),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.messenger_outline),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.send),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    postpic.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: CircleAvatar(
                            backgroundColor: (index == pages - 1)
                                ? ColorsConstants.primaryblue
                                : null,
                            radius: (index == pages - 1) ? 5 : 3,
                          ),
                        )),
              )),
              Spacer(),
              Icon(Icons.bookmark)
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 9,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Liked by"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "fat_boy",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("and"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "38,222",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Row(
                children: [
                  Text("arj__u", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Freshness and beauty always to remember...",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
