import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/configs/drawer_menu_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UIs"),
      ),
      drawer: Drawer(
        child: ListView.builder(
            itemCount: drawerMenus.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  //Navigate to respective path or screen
                  Navigator.pushNamed(context, drawerMenus[index].route);
                },
                child: ListTile(
                  leading: Icon(drawerMenus[index].icon),
                  title: Text(drawerMenus[index].name),
                ),
              );
            }),
      ),
      body: Container(
        child: Center(child: Text("Sample app with flutter UIs",
        style: TextStyle(
          fontSize: 20.0
        ),),),
      ),
    );
  }
}
