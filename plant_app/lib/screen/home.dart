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
      //  drawer: const MyDrawer(),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color(0xff56b286),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start,
             children: [
              Padding(
               padding: const EdgeInsets.symmetric(vertical:30),
             child: Row(
                children: [
                  Row(
                    children: [
                      MyDrawer(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/assets/ali.jpg")),
                          shape: BoxShape.circle),
                    )
                  ]),
                ],
              ),
             )
            ]),
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
                top: 50,
                right: -width / 1.3,
                child: Container(
                  height: 500,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/assets/plant.png"))),
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