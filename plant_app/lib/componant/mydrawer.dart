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
              child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage("images/assets/ali.jpg"),
                        ),
                        SizedBox(height: 20),
                        Text("Ali Abdullah",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w800)),
                        SizedBox(height: 5),
                        Text("Sudanese",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ]))),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(color: Colors.grey),
          ),
        ],
      ),
    );
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
/* 
UserAccountsDrawerHeader(
            accountName: const Text("Ali Abdullah" , style:TextStyle(color:Colors.black)),
            accountEmail: const Text("Sudanese", style:TextStyle(color:Colors.black)),
            currentAccountPicture: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/assets/ali.jpg")),
                  shape: BoxShape.circle),
            ),decoration: const BoxDecoration(
              color:Color(0xfffafafa),
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
*/
