import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';

class Type extends StatefulWidget {
  Type({Key? key}) : super(key: key);

  @override
  State<Type> createState() => _TypeState();
}

class _TypeState extends State<Type> {
  bool _isShow = true;
  // int _pageController = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Fliters"),
              //backgroundColor: primaryColor,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                tooltip: 'Menu Icon',
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => Frontpage()));
                },
              ),
            ),
            body: SingleChildScrollView(
                child: Container(
                    color: white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   height: 220,
                          //   width: double.infinity,
                          //   decoration: BoxDecoration(
                          //     color: yellow,
                          //     borderRadius: BorderRadius.only(
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30),
                          //     ),
                          //     // image: DecorationImage(
                          //     //   colorFilter: new ColorF,ilter.mode(
                          //     //       yellow.withOpacity(0.6), BlendMode.srcOver),
                          //     //   image: AssetImage(
                          //     //     "assets/images/plane1.png",
                          //     //   ),
                          //     //   fit: BoxFit.fill,
                          //     // ),
                          //   ),
                          //   child: SafeArea(
                          //       child: Padding(
                          //     padding: const EdgeInsets.only(left: 10),
                          //     child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         GestureDetector(
                          //           onTap: () {
                          //             Navigator.pop(context);
                          //           },
                          //           child: Icon(Icons.arrow_back),
                          //         ),
                          //         SizedBox(
                          //           height: 5,
                          //         ),
                          //         Row(
                          //           mainAxisAlignment: MainAxisAlignment.center,
                          //           children: [
                          //             Column(
                          //               children: [
                          //                 Text(
                          //                   'DEL',
                          //                   style: TextStyle(
                          //                       fontSize: 30, fontWeight: FontWeight.bold),
                          //                 ),
                          //                 Text(
                          //                   'DELHI',
                          //                   style: TextStyle(
                          //                       color: dash,
                          //                       fontSize: 18,
                          //                       fontWeight: FontWeight.w600),
                          //                 ),
                          //               ],
                          //             ),
                          //             SizedBox(width: 25),
                          //             DottedLine(
                          //               direction: Axis.horizontal,
                          //               lineLength: 55,
                          //               lineThickness: 1.0,
                          //               dashLength: 4.0,
                          //               dashColor: black,
                          //               dashRadius: 0.0,
                          //               dashGapLength: 4.0,
                          //               dashGapColor: Colors.transparent,
                          //               dashGapRadius: 0.0,
                          //             ),
                          //             Image.asset(
                          //               'assets/images/right.png',
                          //               width: 25,
                          //               height: 25,
                          //             ),
                          //             DottedLine(
                          //               direction: Axis.horizontal,
                          //               lineLength: 55,
                          //               lineThickness: 1.0,
                          //               dashLength: 4.0,
                          //               dashColor: black,
                          //               dashRadius: 0.0,
                          //               dashGapLength: 4.0,
                          //               dashGapColor: Colors.transparent,
                          //               dashGapRadius: 0.0,
                          //             ),
                          //             SizedBox(
                          //               width: 25,
                          //             ),
                          //             Column(
                          //               children: [
                          //                 Text(
                          //                   'MUM',
                          //                   style: TextStyle(
                          //                       fontSize: 30, fontWeight: FontWeight.bold),
                          //                 ),
                          //                 Text(
                          //                   'MUMBAI',
                          //                   style: TextStyle(
                          //                       color: dash,
                          //                       fontSize: 18,
                          //                       fontWeight: FontWeight.w600),
                          //                 ),
                          //               ],
                          //             ),
                          //           ],
                          //         ),
                          //         SizedBox(
                          //           height: 25,
                          //         ),
                          //         Row(
                          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //           children: [
                          //             Text(
                          //               '19 Jun 2023',
                          //               style: TextStyle(
                          //                   color: tab,
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.bold),
                          //             ),
                          //             Text(
                          //               '2 Passenger',
                          //               style: TextStyle(
                          //                   color: tab,
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w600),
                          //             ),
                          //             Text(
                          //               'Economy',
                          //               style: TextStyle(
                          //                   color: tab,
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.bold),
                          //             ),
                          //           ],
                          //         )
                          //       ],
                          //     ),
                          //   )),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          Text(
                            'Your Trip',
                            style: TextStyle(
                                color: dash,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'DEL ' '-',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'MUM',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 170, 171, 172),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Oneway',
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/filter.png',
                                  width: 25,
                                  height: 35,
                                ),
                              )
                            ],
                          ),

                          Text(
                            '19 Jun,2023',
                            style: TextStyle(
                                color: dash,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Column(children: [
                            SizedBox(
                                child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  physics: ScrollPhysics(),
                                  itemCount: 8,
                                  itemBuilder:
                                      (BuildContext context, _pageController) {
                                    return InkWell(
                                        onTap: () {
                                          // setState(() {
                                          //   _pageController = index;
                                          // });
                                        },
                                        child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 7, horizontal: 0),
                                            child: SizedBox(
//height: 135,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _pageController = 1;
                                                    _isShow = !_isShow;
                                                  });
                                                  // Navigator.of(context).pushReplacement(
                                                  //     MaterialPageRoute(
                                                  //         builder:
                                                  //             (BuildContext context) =>
                                                  //                 Checkout_Flight()));
                                                },
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      child: Card(
                                                        color: Color.fromARGB(
                                                            255, 248, 252, 253),
                                                        elevation: 3,
                                                        // color: yellow,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left: 5,
                                                                        right:
                                                                            5),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/air2.png',
                                                                      width: 60,
                                                                      height:
                                                                          30,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                    Text(
                                                                      '₹4720',
                                                                      style:
                                                                          TextStyle(
                                                                        color:
                                                                            yellow,
                                                                        // color: Color.fromARGB(255, 248, 224, 6),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '8:00 pm',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                      Text(
                                                                        'DEL ,Mon',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              greytext,
                                                                          fontSize:
                                                                              14,
                                                                          // fontWeight:
                                                                          //     FontWeight.w500
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          20),
                                                                  Column(
                                                                    // crossAxisAlignment:
                                                                    // CrossAxisAlignment.center,
                                                                    children: [
                                                                      Image
                                                                          .asset(
                                                                        'assets/images/flight.png',
                                                                        width:
                                                                            20,
                                                                        height:
                                                                            20,
                                                                      ),
                                                                      DottedLine(
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        lineLength:
                                                                            70,
                                                                        lineThickness:
                                                                            1.0,
                                                                        dashLength:
                                                                            3.0,
                                                                        dashColor:
                                                                            black,
                                                                        dashRadius:
                                                                            0.0,
                                                                        dashGapLength:
                                                                            4.0,
                                                                        dashGapColor:
                                                                            Colors.transparent,
                                                                        dashGapRadius:
                                                                            0.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  // Image.asset(
                                                                  //   'assets/images/right.png',
                                                                  //   width: 20,
                                                                  //   height: 20,
                                                                  // ),
                                                                  // DottedLine(
                                                                  //   direction: Axis.horizontal,
                                                                  //   lineLength: 30,
                                                                  //   lineThickness: 1.0,
                                                                  //   dashLength: 4.0,
                                                                  //   dashColor: black,
                                                                  //   dashRadius: 0.0,
                                                                  //   dashGapLength: 4.0,
                                                                  //   dashGapColor:
                                                                  //       Colors.transparent,
                                                                  //   dashGapRadius: 0.0,
                                                                  // ),
                                                                  SizedBox(
                                                                    width: 15,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '2:15 pm',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                      Text(
                                                                        'MUM ,Tue',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              greytext,
                                                                          fontSize:
                                                                              12,
                                                                          // fontWeight:
                                                                          //     FontWeight.w500
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),

                                                                  SizedBox(
                                                                      width: 5),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        ' BKN7',
                                                                        style: TextStyle(
                                                                            // color: dash,
                                                                            fontSize: 16,
                                                                            fontWeight: FontWeight.w600),
                                                                      ),
                                                                      Text(
                                                                        'Flight No.',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              greytext,
                                                                          fontSize:
                                                                              12,
                                                                          // fontWeight:
                                                                          //     FontWeight.w500
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            5),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      ' Duration : ',
                                                                      style: TextStyle(
                                                                          color:
                                                                              greytext,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                    Text(
                                                                      '1hr 10mins',
                                                                      style: TextStyle(
                                                                          color:
                                                                              black,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Text(
                                                                      '|',
                                                                      style:
                                                                          TextStyle(
                                                                        color:
                                                                            greytext,
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Text(
                                                                      'Non - Stop',
                                                                      style:
                                                                          TextStyle(
                                                                        color:
                                                                            dash,
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      // flex: 2,
                                                      child: Visibility(
                                                          visible: _isShow,
                                                          child: Card(
                                                              child:
                                                                  Luggage())),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )));
                                  }),
                            )),
                          ])
                        ])))));
  }
}

Widget Luggage() {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
      child: SizedBox(
//height: 135,
        child: GestureDetector(
          onTap: () {
            // setState(() {
            //   _pageController = index;
            // });
            // Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(
            //         builder:
            //             (BuildContext context) =>
            //                 Checkout_Flight()));
          },
          child: Card(
            color: Color.fromARGB(255, 248, 252, 253),
            elevation: 3,
            // color: yellow,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Economy Saver',
                              style: TextStyle(
                                color: black,
                                // color: Color.fromARGB(255, 248, 224, 6),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Fare offered by airline.',
                              style: TextStyle(
                                color: greytext,
                                // color: Color.fromARGB(255, 248, 224, 6),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '₹4720',
                          style: TextStyle(
                            color: yellow,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/luggage1.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Cabin bag',
                                style: TextStyle(
                                  color: black,
                                  // color: Color.fromARGB(255, 248, 224, 6),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/luggage.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Check-in',
                                style: TextStyle(
                                  color: black,
                                  // color: Color.fromARGB(255, 248, 224, 6),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/rupee.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Cancellation',
                                style: TextStyle(
                                  color: black,
                                  // color: Color.fromARGB(255, 248, 224, 6),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/calendar.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Date Change',
                                style: TextStyle(
                                  color: black,
                                  // color: Color.fromARGB(255, 248, 224, 6),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '8 Kgs',
                            style: TextStyle(
                              color: dash,
                              // color: Color.fromARGB(255, 248, 224, 6),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '25 Kgs',
                            style: TextStyle(
                              color: dash,
                              // color: Color.fromARGB(255, 248, 224, 6),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            'Cancellation Fee Starting ₹4000',
                            style: TextStyle(
                              color: dash,
                              // color: Color.fromARGB(255, 248, 224, 6),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Date Change Fee Starting ₹3000',
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                              color: dash,
                              // color: Color.fromARGB(255, 248, 224, 6),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: 90,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 241, 189),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: yellow)),
                          child: Center(
                              child: Text(
                            'Lock Price',
                            style: TextStyle(
                                color: yellow, fontWeight: FontWeight.w600),
                          ))),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 90,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 226, 43),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: yellow)),
                          child: Center(
                              child: Text(
                            'Book Now',
                            style: TextStyle(
                                color: white, fontWeight: FontWeight.w600),
                          )))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
}
