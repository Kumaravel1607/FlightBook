import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
import 'package:mytrip/Flight/Flight.dart';
import 'package:mytrip/Home/Place.dart';

class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List CatNames = ['Flight', 'Hotel', 'Bus', 'Car', 'Train'];
  List<Color> CatColor = [
    Color(0xFF5f68ec),
    Color(0xFFf77163),
    Color(0xFF4cccff),
    Color(0xFFfb9058),
    Color(0xFFf78889)
  ];
  List<Icon> CatIcons = [
    Icon(
      Icons.flight_takeoff_outlined,
      size: 30,
      color: white,
    ),
    Icon(
      Icons.king_bed_outlined,
      size: 30,
      color: white,
    ),
    Icon(
      Icons.directions_bus_outlined,
      size: 30,
      color: white,
    ),
    Icon(
      Icons.directions_car_outlined,
      size: 30,
      color: white,
    ),
    Icon(
      Icons.train_outlined,
      size: 30,
      color: white,
    ),
  ];
  //TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: white,
      //   leading: IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.list_rounded,
      //         color: black,
      //       )),
      //   titleSpacing: 100,
      //   title: Row(
      //     children: [
      //       Icon(
      //         Icons.person_pin_circle,
      //         color: black,
      //       ),
      //       Text(
      //         'Location',
      //         style: TextStyle(
      //             fontSize: 16, fontWeight: FontWeight.w700, color: black),
      //       )
      //     ],
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 10),
      //       child: CircleAvatar(
      //           radius: 18,
      //           backgroundImage: AssetImage('assets/images/woman.png')),
      //     )
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.list_rounded,
                        size: 10,
                        color: black,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: black,
                      ),
                      Text(
                        'New York, ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: black),
                      ),
                      Text(
                        'US',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: black),
                      ),
                    ],
                  ),
                  CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/woman.png')),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi Annie,',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Let's Discover a New Adventure!",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueGrey),
                            ),
                            // SizedBox(
                            //   height: 25,
                            // ),
                            // TextField(
                            //   // onChanged: (text) {
                            //   //   setState(() {
                            //   //     _keyword = text;
                            //   //   });
                            //   // },
                            //   // onChanged: (value) {
                            //   //   setState(() {
                            //   //     _search = users
                            //   //         .where((element) => element.firstName!
                            //   //             .toLowerCase()
                            //   //             .contains(value.toLowerCase()))
                            //   //         .toList();
                            //   //   });
                            //   // },

                            //   // onChanged: (string) {
                            //   //   _debouncer.run(() {
                            //   //     setState(() {
                            //   //       _search = users
                            //   //           .where(
                            //   //             (u) => (u.firstName!
                            //   //                 .toLowerCase()
                            //   //                 .contains(
                            //   //                   string.toLowerCase(),
                            //   //                 )),
                            //   //           )
                            //   //           .toList();
                            //   //     });
                            //   //   });
                            //   // },
                            //   controller: _textEditingController,
                            //   // onChanged: (value) => _Filter(value),
                            //   decoration: InputDecoration(
                            //       fillColor: Color.fromARGB(255, 217, 227, 235),
                            //       filled: true,
                            //       enabledBorder: OutlineInputBorder(
                            //           borderSide: const BorderSide(
                            //               width: 3, color: Colors.transparent),
                            //           borderRadius: BorderRadius.circular(20)),
                            //       focusedBorder: OutlineInputBorder(
                            //           borderSide: const BorderSide(color: grey),
                            //           borderRadius: BorderRadius.circular(20)),
                            //       contentPadding: const EdgeInsets.only(left: 20),
                            //       prefixIcon: Icon(
                            //         Icons.search,
                            //         color: Blue,
                            //         // color: Color.fromARGB(255, 108, 86, 231),
                            //       ),
                            //       hintText: 'Search Hotels,Taxi etc..,,',
                            //       hintStyle: const TextStyle(
                            //           fontSize: 14,
                            //           fontFamily: 'NunitoSans',
                            //           fontWeight: FontWeight.w400,
                            //           fontStyle: FontStyle.normal)),
                            // ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
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
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Flight(
                                                    categoryname:
                                                        CatNames[index],
                                                  )));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 10),
                                      height: 60,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: CatColor[index],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //       color: Colors.white,
                                        //       blurRadius: 1,
                                        //       spreadRadius: 1),
                                        // ],
                                      ),
                                      child: Center(
                                        child: CatIcons[index],
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
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  PlaceSection(),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
