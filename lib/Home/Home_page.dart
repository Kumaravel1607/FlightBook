import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mytrip/Cars/Cars.dart';
import 'package:mytrip/Constant/color.dart';
import 'package:mytrip/Flight/Flight.dart';
import 'package:mytrip/Home/Place.dart';
import 'package:mytrip/Hotel/Hotel.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List CatNames = ['Flight', 'Hotel', 'Car', 'Bus', 'Train'];
  List<Color> CatColor = [
    Color(0xFF4075ff),
    Color(0xFFff5b83),
    Color(0xFF70D4FF),
    Color(0xFFFF8024),
    Color(0xFF9540FF)
  ];

  // _image(String pic) {
  //   Image(
  //     image: AssetImage('assets/images/$pic.png'),
  //     width: 30,
  //     height: 30,
  //   );
  // }

  List<Image> CatImages = [
    Image(
      image: AssetImage(
        'assets/images/plane1.png',
      ),
      width: 30,
      height: 30,
    ),
    Image(
      image: AssetImage('assets/images/plane2.png'),
      width: 30,
      height: 30,
    ),
    Image(
      image: AssetImage('assets/images/plane3.png'),
      width: 30,
      height: 30,
    ),
    Image(
      image: AssetImage('assets/images/plane4.png'),
      width: 30,
      height: 30,
    ),
    Image(
      image: AssetImage(
        'assets/images/train.png',
      ),
      color: white,
      width: 30,
      height: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 15, top: 15),
          child: Image.asset(
            'assets/images/menu.png',
          ),
        ),
        titleSpacing: 1,
        title: Image.asset(
          'assets/images/logo1.png',
          width: 110,
          height: 75,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/images/man1.png',
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: Image.asset(
                          // 'assets/images/r2.jpeg',
                          'assets/images/banner1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 25,
                    child: Text(
                      'WELCOME  JOHN',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poopins',
                          fontWeight: FontWeight.w500,
                          color: white),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 25,
                    child: Text(
                      'Let’s discover a new trip',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poopins',
                          fontWeight: FontWeight.w400,
                          color: white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: CatNames.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectedIndex = index;
                              if (CatNames[selectedIndex] == "Flight") {
                                Navigator.of(context, rootNavigator: true)
                                    .push(MaterialPageRoute(
                                        builder: (context) => Flight(
                                              categoryname: CatNames[index],
                                            )));
                              } else if (CatNames[selectedIndex] == "Hotel") {
                                Navigator.of(context, rootNavigator: true)
                                    .push(MaterialPageRoute(
                                        builder: (context) => Hotel(
                                              categoryname: CatNames[index],
                                            )));
                              } else if (CatNames[selectedIndex] == "Car") {
                                Navigator.of(context, rootNavigator: true)
                                    .push(MaterialPageRoute(
                                        builder: (context) => Cars(
                                              categoryname: CatNames[index],
                                            )));
                              }
                              // Navigator.of(context, rootNavigator: true).push(
                              //   MaterialPageRoute(
                              //       builder: (context) => Flight(
                              //             categoryname: CatNames[index],
                              //           )),
                              //Cars()
                              //)
                              // Hotel(
                              //       categoryname: CatNames[index],
                              //     )),
                              // );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 12),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: CatColor[index],
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: grey,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(0, 4)),
                                ],
                              ),
                              child: Center(
                                child: CatImages[index],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            CatNames[index],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600, color: black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: PlaceSection(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
