import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:const Text("Ali Abdullah"),
            accountEmail: const Text("Alieko.A50@gmail.com"),
            currentAccountPicture: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("example/images/slider/ali.jpg")),
                  shape: BoxShape.circle),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          drawerItems(
            "Profile",
            Icons.person_outline_outlined,
            () {
            },
          ),
          drawerItems(
            "Messages",
            Icons.message_outlined,
            () {
            },
          ),
          drawerItems(
            "Lists",
            Icons.list,
            () {
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }


  

  InkWell drawerItems(String text, IconData icon, Function onTap) {
    return InkWell(
      child: ListTile(
        title: Text(text, style: const TextStyle(color: Colors.black, fontSize: 18)),
        leading: Icon(
          Icons.person_outline_outlined,
           color: Colors.grey, size: 25),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}