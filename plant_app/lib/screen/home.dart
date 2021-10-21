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
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(top:30),
            height: 80,
            width: 80,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(80)),
                image: DecorationImage(
                    image: AssetImage("images/assets/ali.jpg"),fit: BoxFit.cover)),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: double.infinity,
            width: width,
            color: Colors.green,
          ),
          Stack(
            children: [
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
        
         ] ));
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