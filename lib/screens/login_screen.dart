import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topstackHeight=100.0;

    final titleBlock = Stack(
      children: <Widget>[
        Container(
          height: topstackHeight,
        ),
        Positioned(
          //negative -60 so that half of the circle is removed from screen
          right: -60.0,
          top: 0.0,
          child: Container(
            width: topstackHeight,
            height: topstackHeight,
            decoration:
                BoxDecoration(color: Colors.deepPurple, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 0.0,
          bottom: 0.0,
          //to give margin betn circle half of the circle and + 10 from right
          right: (topstackHeight/2)+10,
          child: Container(
            width: 45.0,
            height: 45.0,
            decoration:
                BoxDecoration(color: Colors.deepPurple, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 30.0,
          left: 10.0,
          bottom: 0.0,
          child: Text("Login",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w700
          ),),
        )
      ],
    );

    final bottomBlock=Stack(
      children: <Widget>[
        Container(
          height: topstackHeight,
        ),
        Positioned(
          left: -60.0,
          top: 0.0,
          child: Container(
            width: topstackHeight,
            height: topstackHeight,
            decoration:
            BoxDecoration(color: Colors.deepPurple, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 0.0,
          bottom: 0.0,
          left: (topstackHeight/2)+10,
          child: Container(
            width: 45.0,
            height: 45.0,
            decoration:
            BoxDecoration(color: Colors.deepPurple, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 30.0,
          right: 10.0,
          bottom: 0.0,
          child: Text("Sign Up",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700
            ),),
        )


      ],
    );

    final theme=Theme.of(context);

    final loginBlock=Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 28.0,right: 28.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0,bottom: 30.0,
                left: 20.0,right: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Theme(
                      data: theme.copyWith(primaryColor: Colors.deepPurple),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.deepPurple,
                              width: 1.0,
                              style: BorderStyle.solid
                            )
                          ),
                          icon: Icon(Icons.person_outline,
                          color: Colors.deepPurple,)
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ) ,
                          icon: Icon(Icons.lock_outline,
                          color: Colors.deepPurple,)
                      ),

                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Radio(value: 1, groupValue: 1,
                      activeColor: Colors.deepPurple,
                        onChanged: (int value) {},),
                      Text("Remember me")
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 8.0,bottom: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0)
                    )
                  ),
                  child: Center(
                    child: Text("LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                    ),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: titleBlock,
            ),
            Center(child: loginBlock),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: bottomBlock,
            )
          ],
        ),
      ),
    );
  }
}
