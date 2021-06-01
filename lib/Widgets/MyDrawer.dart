import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.deepPurple.withOpacity(0.8),borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.deepPurple),
            accountName: Text("UserName"),
            accountEmail: Text("UserEmail"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/loginpage.png"),
            ),
          ),
        )
      ],
    ));
  }
}
