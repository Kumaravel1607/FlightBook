//import 'dart:ffi';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
//import 'package:mytrip/Flight/checkout/Checkout_flight.dart';
import 'package:mytrip/Flight/Policypage.dart';

class SearchFlight extends StatefulWidget {
  SearchFlight({Key? key}) : super(key: key);

  @override
  State<SearchFlight> createState() => _SearchFlightState();
}

int _pageController = 0;
bool _isShow = true;
bool _sheet = true;

class _SearchFlightState extends State<SearchFlight> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sheet = false;
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
        titleSpacing: 90,
        title: Text(
          'Select Flight',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: black),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
                                      color: Color.fromARGB(255, 170, 171, 172),
                                      borderRadius: BorderRadius.circular(10)),
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
                                                                      right: 5),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Image.asset(
                                                                    'assets/images/air2.png',
                                                                    width: 60,
                                                                    height: 30,
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
                                                                          FontWeight
                                                                              .bold,
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
                                                                    width: 20),
                                                                Column(
                                                                  // crossAxisAlignment:
                                                                  // CrossAxisAlignment.center,
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/flight.png',
                                                                      width: 20,
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
                                                                          Colors
                                                                              .transparent,
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
                                                                      left: 5),
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
                                                            child: Column(
                                                          children: [
                                                            Luggage(),
                                                            Luggage2()
                                                          ],
                                                        ))),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )));
                                }),
                          )),
                        ])
                      ])))),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     boxShadow: <BoxShadow>[
      //       BoxShadow(
      //         color: light,
      //       ),
      //     ],
      //   ),
      //   height: 70,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         RichText(
      //           text: TextSpan(
      //             //  text: '₹' + widget.price,
      //             // text: "₹" + widget.price,

      //             text: '₹220',
      //             style: TextStyle(
      //               fontSize: 24,
      //               fontWeight: FontWeight.w600,
      //               color: black,
      //             ),
      //             children: const <TextSpan>[
      //               TextSpan(
      //                   text: '/person \n incl. all taxes',
      //                   style: TextStyle(
      //                       color: tab,
      //                       fontWeight: FontWeight.w400,
      //                       fontSize: 12)),
      //             ],
      //           ),
      //         ),
      //         MaterialButton(
      //           height: 45,
      //           minWidth: 190,
      //           shape: RoundedRectangleBorder(
      //               borderRadius: new BorderRadius.circular(22)),
      //           onPressed: () {
      //             // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //             //     builder: (BuildContext context) => BookSlot()));
      //           },
      //           child: Wrap(
      //             children: [
      //               Align(
      //                 alignment: Alignment.center,
      //                 child: Text('Book now',
      //                     style: TextStyle(
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.w500,
      //                       color: white,
      //                     )),
      //               ),
      //               Icon(
      //                 Icons.chevron_right,
      //                 color: white,
      //                 size: 20,
      //               )
      //             ],
      //           ),
      //           color: red,
      //         ),
      //         ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //                 shape: StadiumBorder(),
      //                 foregroundColor: white,
      //                 backgroundColor: red),
      //             onPressed: () {},
      //             child: Wrap(
      //               children: [Text('Book now'), Icon(Icons.chevron_right)],
      //             ))
      //   ],
      // ),
      // ),

      // )
    );
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
              child: _card1()),
        ));
  }

  Widget Luggage2() {
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
              child: _card2()),
        ));
  }

  _card1() {
    return Card(
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
                      // SizedBox(
                      //   height: 5,
                      // ),
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹4000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹3000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
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
                      style:
                          TextStyle(color: yellow, fontWeight: FontWeight.w600),
                    ))),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (BuildContext context) => ShowSheet()));
                    _showBottomSheet();
                  },
                  child: Container(
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
                      ))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _card2() {
    return Card(
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
                        'Economy Basic',
                        style: TextStyle(
                          color: black,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
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
                    '₹6320',
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹3000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹2000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
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
                      style:
                          TextStyle(color: yellow, fontWeight: FontWeight.w600),
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
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w600),
                    )))
              ],
            ),
          ],
        ),
      ),
    );
  }

  _card3() {
    return Card(
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
                      // SizedBox(
                      //   height: 5,
                      // ),
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹4000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹3000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _card4() {
    return Card(
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
                        'Economy Basic',
                        style: TextStyle(
                          color: black,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
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
                    '₹6320',
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹3000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹2000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showBottomSheet() {
    showModalBottomSheet<dynamic>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Wrap(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Container(
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(25.0),
                                topRight: const Radius.circular(25.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/air2.png',
                                            width: 60,
                                            height: 30,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Deccan Air',
                                            style: TextStyle(
                                              color: black,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '|',
                                            style: TextStyle(
                                              color: black,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'BKN7',
                                            style: TextStyle(
                                              color: black,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                '21:50',
                                                style: TextStyle(
                                                  color: black,
                                                  // color: Color.fromARGB(255, 248, 224, 6),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Wed,21 Jun 23',
                                                style: TextStyle(
                                                  color: black,
                                                  // color: Color.fromARGB(255, 248, 224, 6),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '1 hr 50 mins',
                                                style: TextStyle(
                                                  color: grey,
                                                  // color: Color.fromARGB(255, 248, 224, 6),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Icon(
                                                Icons.watch_later_outlined,
                                                size: 20,
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '23:50',
                                                style: TextStyle(
                                                  color: black,
                                                  // color: Color.fromARGB(255, 248, 224, 6),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Wed,21 Jun 23',
                                                style: TextStyle(
                                                  color: black,
                                                  // color: Color.fromARGB(255, 248, 224, 6),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'New Delhi',
                                            style: TextStyle(
                                              color: black,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Mumbai',
                                            style: TextStyle(
                                              color: black,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr. MGR International \nAirport',
                                            style: TextStyle(
                                              color: black,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Indira Gandhi International\n Airport',
                                            style: TextStyle(
                                              color: black,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Terminal 1',
                                            style: TextStyle(
                                              color: grey,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Terminal4',
                                            style: TextStyle(
                                              color: grey,
                                              // color: Color.fromARGB(255, 248, 224, 6),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              _card3(),
                              _card4(),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: light,
                        ),
                      ],
                    ),
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              //  text: '₹' + widget.price,
                              // text: "₹" + widget.price,

                              text: '₹4720',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: black,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '/person \n incl. all taxes',
                                    style: TextStyle(
                                        color: tab,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12)),
                              ],
                            ),
                          ),
                          MaterialButton(
                            height: 45,
                            minWidth: 190,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(22)),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ShowSheet()));
                            },
                            child: Wrap(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text('Continue',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: white,
                                      )),
                                ),
                                Center(
                                  child: Icon(
                                    Icons.chevron_right,
                                    color: white,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            color: yellow,
                          ),
                          // ElevatedButton(
                          //     style: ElevatedButton.styleFrom(
                          //         shape: StadiumBorder(),
                          //         foregroundColor: white,
                          //         backgroundColor: red),
                          //     onPressed: () {},
                          //     child: Wrap(
                          //       children: [
                          //         Text('Book now'),
                          //         Icon(Icons.chevron_right)
                          //       ],
                          //     ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]);
        });
  }
}
