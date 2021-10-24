import 'package:flutter/material.dart';
import 'package:plant_app/componant/mydrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: const Color(0xff56b286),
      actions: [Container(height: 50,width: 50,
         decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/assets/ali.jpg")),shape: BoxShape.circle,), 
      )],
    ),
         drawer:  MyDrawer(),
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xff56b286),
        ),
        SizedBox(height:width / 4),
        Padding(
          padding: const EdgeInsets.only(left:30),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               Text("INDOOR" , style: TextStyle(color:Colors.grey)),
                SizedBox(height: 10),
               Text("Ficus" , style: TextStyle(color:Colors.white , fontSize: 20)),
                SizedBox(height: 20),
               Text("FROM" , style: TextStyle(color:Colors.grey)),
                SizedBox(height: 10),
               Text("Moracede" , style: TextStyle(color:Colors.white, fontSize: 20)),
                SizedBox(height: 20),
               Text("SIZES" , style: TextStyle(color:Colors.grey)),
                SizedBox(height: 10),
               Text("Small" , style: TextStyle(color:Colors.white, fontSize: 20)),
                SizedBox(height: 20),
          ])
          ),
        Positioned(
          bottom: 0,
          child: Container(
            height: width / 1.2,
            width: width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
        ),
        Positioned(
            top: width / 4,
            left:  width / 2,
            child: Container(
              height: width / 1.5,
              width: width / 2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                          image: AssetImage("images/assets/ficus.png"),fit: BoxFit.cover)
                  ),
            ))
      ],
    ));
  }
}
/*
child: Column(
        children: [
          Container(
            height: width * 1.2,
            width: width,
            color: Colors.green,
          ),
          Stack(
            children: [
              Container(
                height: width * 1.2,
                width: width,
                color: Colors.white,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
              Positioned(
                  top: width * .1,
                  right: width * 1.5,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/assets/plant.png"))),
                  ))
            ],
          )
        ],
      ),

*/

/*
Container(
          height: double.infinity,
          width: width,
          color: Colors.green,
        ),
*/

/*
 height: 500,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/assets/plant.png"))), 
*/