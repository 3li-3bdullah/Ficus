import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Stack(
            children: [
              Container(
            height: double.infinity,
            width: width,
            color: Colors.green,
          ),
              Positioned(
                height: width * 1.2,
                width: width,
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30) )),
                ),
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
        
         );
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