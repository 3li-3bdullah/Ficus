import 'package:flutter/material.dart';
import 'package:plant_app/widgets/custom_text.dart';

class MyDrawer extends StatefulWidget {
  // const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/assets/ali.jpg"),
                ),
                SizedBox(height: 20),
               CustomText(
                  text: "Ali Abdullah",
                  fontsize:22,
                  fontweight: FontWeight.w800,
                ),
                SizedBox(height: 5),
                CustomText(
                  text:"Sudanese",
                  fontsize:16,
                  fontweight: FontWeight.w400,
                ),
              ])),
      const SizedBox(height: 18),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Divider(color: Colors.grey),
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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Divider(
          color: Colors.grey,
        ),
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            drawerItems(
              "Tell a Friend",
              Icons.share,
              () {},
            ),
            drawerItems(
              "Help",
              Icons.help_outline,
              () {},
            )
          ])
    ]));
  }

  InkWell drawerItems(String text, IconData icon, Function onTap) {
    return InkWell(
      child: ListTile(
        title: Text(text,
            style: const TextStyle(color: Colors.black, fontSize: 18)),
        leading: Icon(icon, color: Colors.grey, size: 25),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}

