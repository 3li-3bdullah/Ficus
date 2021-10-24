import 'package:flutter/material.dart';
import 'package:plant_app/componant/mydrawer.dart';
import 'package:plant_app/widgets/custom_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Color primary = Colors.grey.shade300;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff56b286),
          actions: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("images/assets/ali.jpg")),
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
        drawer: MyDrawer(),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color(0xff56b286),
            ),
            SizedBox(height: width / 4),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("INDOOR", style: TextStyle(color: primary)),
                      const SizedBox(height: 10),
                      const Text("Ficus",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      const SizedBox(height: 20),
                      Text("FROM", style: TextStyle(color: primary)),
                      const SizedBox(height: 10),
                      const Text("Moracede",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      const SizedBox(height: 20),
                      Text("SIZES", style: TextStyle(color: primary)),
                      const SizedBox(height: 10),
                      const Text("Small",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      const SizedBox(height: 20),
                    ])),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: width / 6),
                          const CustomText(text: "All to know...", fontsize: 22, 
                          fontweight: FontWeight.w800 ,color:Colors.black ),
                          const SizedBox(height: 20),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text:
                                    "if you are completely now to houseplants then Ficus is a brillant first plant to adopt it is very easy to look after and won't occupy too much space",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14)),
                          ])),
                          const SizedBox(height: 25),
                          const CustomText(text: "Details", fontsize: 22, 
                          fontweight: FontWeight.w800 ,color:Colors.black ),
                          const SizedBox(height: 10),
                          const CustomText(text: "Plant height:35-45 cm", fontsize: 14, 
                          fontweight: FontWeight.normal ,color:Colors.grey ),
                          const CustomText(text: "Nursery pot width 12cm", fontsize: 14, 
                          fontweight: FontWeight.normal ,color:Colors.grey ),
                        ]),
                  )),
            ),
            Positioned(
                top: width / 12,
                left: width / 2,
                child: Container(
                  height: width / 1.5,
                  width: width / 2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/assets/ficus.png"),
                          fit: BoxFit.cover)),
                ))
          ],
        ));
  }
}
