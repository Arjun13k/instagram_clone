import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';

class CustomColumWidget extends StatefulWidget {
  const CustomColumWidget(
      {super.key,
      this.verification = false,
      required this.username,
      required this.proic,
      required this.dispalyMessage,
      required this.circleimage,
      required this.messageLiked,
      required this.likes,
      required this.discreptionMessage,
      required this.postpic});
  final bool verification;
  final String username;
  final String proic;
  final String dispalyMessage;
  final String circleimage;
  final String messageLiked;
  final int likes;
  final String discreptionMessage;
  final List<String> postpic;
  @override
  State<CustomColumWidget> createState() => _CustomColumWidgetState();
}

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
              backgroundImage: NetworkImage(widget.proic),
            ),
            title: Row(
              children: [
                Text(
                  widget.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                if (widget.verification) ...[
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.verified,
                    color: ColorsConstants.primaryblue,
                    size: 15,
                  )
                ]
              ],
            ),
            subtitle: Text(widget.dispalyMessage),
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
                itemCount: widget.postpic.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.postpic[index]),
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
                    "$pages/${widget.postpic.length}",
                    style: TextStyle(color: ColorsConstants.primarywhite),
                  ),
                ))
          ]),
          SizedBox(
            height: 10,
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
                    widget.postpic.length,
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
                  backgroundImage: NetworkImage(widget.circleimage),
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
                  widget.messageLiked,
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
                  widget.likes.toString(),
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
                  Text(widget.username,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.discreptionMessage,
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
