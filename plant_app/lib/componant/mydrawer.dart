import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  // const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color:Colors.white
          ),
          UserAccountsDrawerHeader(
            accountName: const Text("Ali Abdullah"),
            accountEmail: const Text("Sudanese"),
            currentAccountPicture: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/assets/ali.jpg")),
                  shape: BoxShape.circle),
            ),
          ),
         const Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Divider(
              color:Colors.grey
            ),
          ),
          drawerItems(
            "Profile",
            Icons.person_outline_outlined,
            () {},
          ),
          drawerItems(
            "Messages",
            Icons.message_outlined,
            () {},
          ),
          drawerItems(
            "Lists",
            Icons.list,
            () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
             drawerItems(
            "Tell a Friend",
            Icons.share,
            () {},
          ),
          drawerItems(
            "Help",
            Icons.help_outline,
            () {},
          ), 
            ]
            )
        ],
      ),
    );
  }

  InkWell drawerItems(String text, IconData icon, Function onTap) {
    return InkWell(
      child: ListTile(
        title: Text(text,
            style: const TextStyle(color: Colors.black, fontSize: 18)),
        leading: Icon(
          icon, 
          color: Colors.grey, size: 25),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
