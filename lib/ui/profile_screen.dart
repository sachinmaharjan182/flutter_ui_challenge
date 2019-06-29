import 'package:flutter/material.dart';

/* In this i am setting drawer by using jst icon and settting tap gesture
detector. This is the reason the container is wrapped in builder in order
to pass the scaffold context
 */

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfileScreen();
  }
}

class _ProfileScreen extends State<ProfileScreen> {
  String desc =
      "Lorem Ipsum is simply dummy text of the printing and typesetting "
      "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  static final followerTextStyle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15.0);

  final followerBlock = Container(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        children: <Widget>[
          Text(
            "FOLLOWERS",
            style: followerTextStyle,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "30.5M",
            style: followerTextStyle,
          )
        ],
      ),
      SizedBox(
        width: 25.0,
      ),
      Column(
        children: <Widget>[
          Text(
            "FOLLLOWING",
            style: followerTextStyle,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "3.5M",
            style: followerTextStyle,
          )
        ],
      ),
    ],
  ));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Text("Sample drawer"),
      ),
      body: Builder(
        builder: (context)=>
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: ClipPath(
                      child: Container(
                        padding: EdgeInsets.only(left: 16.0),
                        width: double.infinity,
                        height: 290.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    debugPrint("open drawer");
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: Icon(
                                    Icons.dehaze,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 45.0,
                            ),
                            Text(
                              "Johnny Depp",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 28.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(30.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 20.0,
                                        top: 4.0,
                                        bottom: 4.0),
                                    child: Text(
                                      "Actor",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(30.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 20.0,
                                        top: 4.0,
                                        bottom: 4.0),
                                    child: Text(
                                      "Producer",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/profile_bg.jpeg')),
                        ),
                      ),
                      clipper: MyClipper(),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 20.0,
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('images/profile_avatar.jpg')),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 140.0,
                    right: 0.0,
                    child: followerBlock,
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  desc,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //Creating path to clip widget
    Path path = new Path();
    path.lineTo(0.0, size.height - 20);
    path.lineTo(size.width, size.height - 90.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
