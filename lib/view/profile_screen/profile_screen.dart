import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';
import 'package:instagram_clone/core/constant/global_widget/global_widget_button.dart';
import 'package:instagram_clone/core/constant/image_constant.dart';

class Profile extends StatefulWidget {
  Profile({super.key});
  var currentTabIndex = 0;
  final List imageList = [
    "https://images.pexels.com/photos/18053574/pexels-photo-18053574/free-photo-of-a-man-standing-on-a-boardwalk-and-taking-a-picture-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/19892685/pexels-photo-19892685/free-photo-of-a-small-owl-sitting-on-a-branch-in-the-trees.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5880966/pexels-photo-5880966.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20044831/pexels-photo-20044831/free-photo-of-woman-in-white-blouse-posing-with-bay-horse-on-the-stud-farm-paddock.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/13939465/pexels-photo-13939465.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20339253/pexels-photo-20339253/free-photo-of-woman-wearing-dress-standing-by-the-lake.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/18053574/pexels-photo-18053574/free-photo-of-a-man-standing-on-a-boardwalk-and-taking-a-picture-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/19892685/pexels-photo-19892685/free-photo-of-a-small-owl-sitting-on-a-branch-in-the-trees.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5880966/pexels-photo-5880966.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20044831/pexels-photo-20044831/free-photo-of-woman-in-white-blouse-posing-with-bay-horse-on-the-stud-farm-paddock.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/13939465/pexels-photo-13939465.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20339253/pexels-photo-20339253/free-photo-of-woman-wearing-dress-standing-by-the-lake.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  ];

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 20,
              ),
              Text(
                'arj__u',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(ImageConstant.profilepic),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          '54',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Post', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '834',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Followers', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '162',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Following', style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arjun k',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: "Edit Profile",
                  BottonColors: ColorsConstants.primarywhite,
                  textColor: ColorsConstants.primaryBlack,
                  haveBorder: true,
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            backgroundColor:
                                ColorsConstants.primaryBlack.withOpacity(.2),
                            child: CircleAvatar(
                              backgroundColor: ColorsConstants.primarywhite,
                              radius: 40,
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Add')
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            backgroundColor:
                                ColorsConstants.primaryBlack.withOpacity(.2),
                            child: CircleAvatar(
                              backgroundColor: ColorsConstants.primarywhite,
                              radius: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Add')
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            backgroundColor:
                                ColorsConstants.primaryBlack.withOpacity(.2),
                            child: CircleAvatar(
                              backgroundColor: ColorsConstants.primarywhite,
                              radius: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Add')
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            backgroundColor:
                                ColorsConstants.primaryBlack.withOpacity(.2),
                            child: CircleAvatar(
                              backgroundColor: ColorsConstants.primarywhite,
                              radius: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Add')
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            backgroundColor:
                                ColorsConstants.primaryBlack.withOpacity(.2),
                            child: CircleAvatar(
                              backgroundColor: ColorsConstants.primarywhite,
                              radius: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Add')
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                TabBar(
                    onTap: (value) {
                      setState(() {
                        widget.currentTabIndex == value;
                      });
                    },
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: ColorsConstants.primaryBlack,
                    indicatorWeight: 1,
                    labelColor: ColorsConstants.primaryBlack,
                    unselectedLabelColor:
                        ColorsConstants.primaryBlack.withOpacity(.4),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.grid_on_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.person_pin_rounded),
                      ),
                    ]),
                widget.currentTabIndex == 0
                    ? GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) => Container(
                          child: Image.network(
                            widget.imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        itemCount: 10,
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) => Container(
                          child: Image.network(
                            widget.imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        itemCount: 6,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
