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
    double height = MediaQuery.of(context).size.height;
    double halfHeight = height / 2;
    double withoutAppbar = halfHeight / 5;
    double increase = halfHeight * 0.05;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff56b286),
          actions: [
            Container(margin: const EdgeInsets.only(right: 20)),
            Container(
              height: width * 0.2,
              width: width * 0.2,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("images/assets/ali.jpg")),
                shape: BoxShape.circle,
              ),
            ),
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
            SizedBox(height: halfHeight / 8),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "INDOOR",
                          fontsize: 15,
                          fontweight: FontWeight.normal,
                          color: primary),
                      SizedBox(height: halfHeight / 45),
                      const CustomText(
                          text: "Ficus",
                          fontsize: 20,
                          fontweight: FontWeight.normal,
                          color: Colors.white),
                      SizedBox(height: halfHeight / 20),
                      CustomText(
                          text: "FROM",
                          fontsize: 15,
                          fontweight: FontWeight.normal,
                          color: primary),
                      SizedBox(height: halfHeight / 45),
                      const CustomText(
                          text: "Moracede",
                          fontsize: 20,
                          fontweight: FontWeight.normal,
                          color: Colors.white),
                      SizedBox(height: halfHeight / 20),
                      CustomText(
                          text: "SIZES",
                          fontsize: 15,
                          fontweight: FontWeight.normal,
                          color: primary),
                      SizedBox(height: halfHeight / 45),
                      const CustomText(
                          text: "Small",
                          fontsize: 20,
                          fontweight: FontWeight.normal,
                          color: Colors.white),
                      SizedBox(height: halfHeight / 20),
                    ])),
            Positioned(
              bottom: 0,
              child: Container(
                  height: halfHeight,
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
                          SizedBox(height: halfHeight / 4),
                          const CustomText(
                              text: "All to know...",
                              fontsize: 22,
                              fontweight: FontWeight.w800,
                              color: Colors.black),
                          SizedBox(height: halfHeight / 20),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text:
                                    "if you are completely now to houseplants then Ficus is a brillant first plant to adopt it is very easy to look after and won't occupy too much space",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14)),
                          ])),
                          SizedBox(height: halfHeight / 20),
                          const CustomText(
                              text: "Details",
                              fontsize: 22,
                              fontweight: FontWeight.w800,
                              color: Colors.black),
                          SizedBox(height: halfHeight / 40),
                          const CustomText(
                              text: "Plant height:35-45 cm",
                              fontsize: 14,
                              fontweight: FontWeight.normal,
                              color: Colors.grey),
                          const CustomText(
                              text: "Nursery pot width 12cm",
                              fontsize: 14,
                              fontweight: FontWeight.normal,
                              color: Colors.grey),
                        ]),
                  )),
            ),
            Positioned(
                top: withoutAppbar + increase,
                left: width / 2,
                child: Container(
                  height: halfHeight - withoutAppbar,
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
