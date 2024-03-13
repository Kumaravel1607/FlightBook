import 'package:chip_list/chip_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_date_picker/full_screen_date_picker.dart';

import 'package:mytrip/Constant/color.dart';
//import 'package:mytrip/Flight/Date.dart';
import 'package:mytrip/Flight/Location.dart';
//import 'package:mytrip/Flight/roundtrip.dart';
import 'package:mytrip/Flight/search_flight.dart';
import 'package:intl/intl.dart';
//import 'package:quantity_input/quantity_input.dart';

class Oneway extends StatefulWidget {
  final String? categoryname;
  Oneway({Key? key, required this.categoryname}) : super(key: key);

  @override
  State<Oneway> createState() => _OnewayState();
}

class _OnewayState extends State<Oneway> {
  final List<String> ClassNames = [
    'Economy/Premium Economy',
    'Premium Economy',
    'Business Class',
    'First Class'
  ];

  int _currentIndex = 0;

  List FareNames = ['Student', 'Armed Forces', 'Senior Citizen', 'Double Seat'];
  List ReferNames = ['Refer & Earn', 'Refer & Earn', '', 'What is this?'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    res = _currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(builder: (context) => Location()));
                    },
                    child: Container(
                      //height: 70,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: grey),
                        ),
                        //borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Icon(Icons.flight_takeoff_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'FROM',
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: 'New Delhi, ',
                                      style: TextStyle(
                                          color: black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'DEL',
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ]),
                                ),
                                // Text(
                                //   'Indira Gandhi International Airport',
                                //   style: TextStyle(
                                //       color: grey,
                                //       fontSize: 14,
                                //       fontWeight: FontWeight.w400),
                                // ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 10),
                  //   child: Align(
                  //     alignment: Alignment.bottomCenter,
                  //     child: Container(
                  //       height: 25,
                  //       decoration: BoxDecoration(
                  //         color: Color.fromARGB(255, 235, 238, 240),
                  //         border: Border.all(color: grey, width: 1),
                  //         borderRadius: BorderRadius.circular(5),
                  //       ),
                  //       child: Icon(
                  //         Icons.swap_vert,
                  //         color: Color.fromARGB(255, 90, 148, 247),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // height: 65,
                    decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 235, 238, 240),
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: grey),
                      ),
                      // border: Border.all(color: grey, width: 1),
                      // borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Icon(Icons.flight_land_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TO',
                                style: TextStyle(
                                    color: grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Mumbai, ',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'BOM',
                                        style: TextStyle(
                                            color: grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ]),
                              ),
                              // Text(
                              //   'Chhatrapati Shivaji International Airport',
                              //   style: TextStyle(
                              //       color: grey,
                              //       fontSize: 14,
                              //       fontWeight: FontWeight.w400),
                              // ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () {
                      Datepick();
                      // Navigator.of(context, rootNavigator: true).push(
                      //     MaterialPageRoute(builder: (context) => BookDate()));
                    },
                    child: Container(
                      // height: 60,
                      // width: 180,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 235, 238, 240),
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: grey),
                        ),
                        // border: Border.all(color: grey, width: 1),
                        // borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DEPARTURE DATE',
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  selectedDate,
                                  //'selectedDate',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                // RichText(
                                //   text: TextSpan(
                                //       text:
                                //           '${_selectedDateRange?.start.toString().split(' ')[0]}',
                                //       style: TextStyle(
                                //           color: black,
                                //           fontSize: 18,
                                //           fontWeight: FontWeight.w600),
                                //       children: <TextSpan>[
                                //         TextSpan(
                                //           text: ' Sat,2023',
                                //           style: TextStyle(
                                //               color: black,
                                //               fontSize: 14,
                                //               fontWeight: FontWeight.w300),
                                //         )
                                //       ]),
                                // ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 60,
                  //   width: 180,
                  //   decoration: BoxDecoration(
                  //     color: Color.fromARGB(255, 235, 238, 240),
                  //     border: Border.all(color: grey, width: 1),
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(
                  //         left: 10, right: 10, top: 15, bottom: 10),
                  //     child: Row(
                  //       children: [
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             GestureDetector(
                  //               onTap: () {},
                  //               child: Text(
                  //                 '+ADD RETURN DATE',
                  //                 style: TextStyle(
                  //                     color:
                  //                         Color.fromARGB(255, 90, 148, 247),
                  //                     fontSize: 12,
                  //                     fontWeight: FontWeight.w600),
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               height: 3,
                  //             ),
                  //             Text(
                  //               'Save more on round trips!',
                  //               style: TextStyle(
                  //                   color: grey,
                  //                   fontSize: 12,
                  //                   fontWeight: FontWeight.w600),
                  //             ),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  //],
                  //  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showBottomSheet();
                    },
                    child: Container(
                      // height: 60,
                      decoration: BoxDecoration(
                        //color: Color.fromARGB(255, 235, 238, 240),
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: grey),
                        ),
                        // border: Border.all(color: grey, width: 1),
                        // borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Icon(Icons.person_outline),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TRAVELLERS & CLASS',
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: adult.toString() + ',',
                                      style: TextStyle(
                                          color: black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: ClassNames[res],
                                          // 'Economy/Premium Economy',
                                          style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'SPECIAL FARES(OPTIONAL)',
            style: TextStyle(
                color: grey, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: FareNames.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(
                          //         builder: (context) => Flight(
                          //               categoryname: CatNames[index],
                          //             )));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          height: 40,
                          //width: 75,
                          decoration: BoxDecoration(
                            color: white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 0.5,
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              FareNames[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // GestureDetector(
                      //     onTap: () {},
                      //     child: Text(
                      //       ReferNames[index],
                      //       style: TextStyle(
                      //           fontSize: 12,
                      //           color: yellow,
                      //           fontWeight: FontWeight.w500,
                      //           fontStyle: FontStyle.normal),
                      //     )),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: yellow,
              minimumSize: const Size.fromHeight(44),
            ),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(builder: (context) => SearchFlight()));
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => Navigation()));
            },
            child: Text(
              'SEARCH FLIGHTS',
              style: TextStyle(
                color: white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ]),
      )),
    );
  }

  String selectedDate = 'Selected a date';
  void Datepick() async {
    DateTime result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => FullScreenDatePicker()),
    );

    String formattedDate = DateFormat.yMMMEd().format(result);

    setState(() => this.selectedDate = formattedDate.toString());
  }

  var child = 0;
  var adult = 0;
  var baby = 0;
  int res = 0;
  String? roomData;
  _showBottomSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        isScrollControlled: true,
        context: context,
        builder: (
          BuildContext bc,
        ) {
          return StatefulBuilder(builder: (BuildContext context,
              StateSetter setState /*You can rename this!*/) {
            return Wrap(children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBar(
                    elevation: 2,
                    backgroundColor: white,
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, color: black),
                    ),
                    titleSpacing: 0,
                    title: Text(
                      'Select Travellers & Class',
                      style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ADD NUMBER OF TRAVELLERS',
                          style: TextStyle(
                            color: greytext,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: ScrollPhysics(),
                            itemCount: 3,
                            itemBuilder:
                                (BuildContext context, _pageController) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Adult',
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            '12 yrs & above',
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'on the day of travel',
                                        style: TextStyle(
                                          color: grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  _age1(adult.toString()),
                                ],
                              );
                            }),
                        chip(),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Text(
                        //               'Children',
                        //               style: TextStyle(
                        //                 color: black,
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.w600,
                        //               ),
                        //             ),
                        //             SizedBox(
                        //               width: 20,
                        //             ),
                        //             Text(
                        //               '2 - 12 yrs ',
                        //               style: TextStyle(
                        //                 color: black,
                        //                 fontSize: 10,
                        //                 fontWeight: FontWeight.w400,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Text(
                        //           'on the day of travel',
                        //           style: TextStyle(
                        //             color: grey,
                        //             fontSize: 12,
                        //             fontWeight: FontWeight.w400,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     _age2(child.toString()),
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Text(
                        //               'Infant',
                        //               style: TextStyle(
                        //                 color: black,
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.w600,
                        //               ),
                        //             ),
                        //             SizedBox(
                        //               width: 20,
                        //             ),
                        //             Text(
                        //               'Under 2yrs',
                        //               style: TextStyle(
                        //                 color: black,
                        //                 fontSize: 10,
                        //                 fontWeight: FontWeight.w400,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Text(
                        //           'on the day of travel',
                        //           style: TextStyle(
                        //             color: grey,
                        //             fontSize: 12,
                        //             fontWeight: FontWeight.w400,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     _age3(baby.toString()),
                        //   ],
                        // ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: yellow,
                            minimumSize: const Size.fromHeight(44),
                          ),
                          onPressed: () {
                            //chip();
                            Navigator.pop(context);
                            // Navigator.of(context, rootNavigator: true).push(
                            //     MaterialPageRoute(
                            //         builder: (context) => SearchFlight()));
                            //   Navigator.of(context).push(MaterialPageRoute(
                            //       builder: (context) => Navigation()));
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]);
          });
        });
  }

// int? _selectedIndex;

// final List<String> _choiceChipsList  = [
//     'Economy/Premium Economy',
//     'Premium Economy',
//     'Business Class',
//     'First Class'
//   ];
//   //  final List<Data> _choiceChipsList = [
//   //   Data("Android", Colors.green),
//   //   Data("Flutter", Colors.blue),
//   //   Data("Ios", Colors.deepOrange),
//   //   Data("Python", Colors.cyan),
//   //   Data("React", Colors.pink)
//   // ];

//    List<Widget> choiceChips() {
//     List<Widget> chips = [];
//     for (int i = 0; i < _choiceChipsList.length; i++) {
//       Widget item = Padding(
//         padding: const EdgeInsets.only(left: 10, right: 5),
//         child: ChoiceChip(
//           label: Text(_choiceChipsList[i]),
//           labelStyle: const TextStyle(color: Colors.white),
//           backgroundColor: y,
//           selected: _selectedIndex == i,
//           selectedColor: Colors.black,
//           onSelected: (bool value) {
//             setState(() {
//               _selectedIndex = i;
//             });
//           },
//         ),
//       );
//       chips.add(item);
//     }
//     return chips;
//   }

  // var sum = 0;
  // _sum(String adult, String child, String baby) {
  //   sum = _age1(adult.toString()) +
  //       _age2(child.toString()) +
  //       _age3(baby.toString());
  // }

  chip() {
    return ChipList(
      listOfChipNames: ClassNames,
      activeBgColorList: [yellow],
      inactiveBgColorList: const [Colors.white],
      activeTextColorList: const [Colors.white],
      inactiveTextColorList: [Theme.of(context).primaryColor],
      listOfChipIndicesCurrentlySeclected: [_currentIndex],
      activeBorderColorList: [yellow],
      shouldWrap: true,
      runSpacing: 10,
      spacing: 10,
      extraOnToggle: (val) {
        _currentIndex = val;
        setState(() {
          res = _currentIndex;
        });
      },
    );
  }

  _age1(String adult) {
    return Card(
      elevation: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _decrementButton(),
          Text(
            '${adult}',
            style: TextStyle(fontSize: 18.0),
          ),
          _incrementButton(),
        ],
      ),
    );
  }

  // _age2(String child) {
  //   return Card(
  //     elevation: 1,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: <Widget>[
  //         _decrementChild(),
  //         Text(
  //           '${child}',
  //           style: TextStyle(fontSize: 18.0),
  //         ),
  //         _incrementchild(),
  //       ],
  //     ),
  //   );
  // }

  // _age3(String baby) {
  //   return Card(
  //     elevation: 1,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: <Widget>[
  //         _decrementbaby(),
  //         Text(
  //           '${baby}',
  //           style: TextStyle(fontSize: 18.0),
  //         ),
  //         _incrementbaby(),
  //       ],
  //     ),
  //   );
  // }

  _incrementButton() {
    return IconButton(
      onPressed: () {
        setState(() {
          adult++;
        });
      },

      icon: new Icon(Icons.add, color: Colors.black),
      // backgroundColor: Colors.white,),
    );
  }

  _decrementButton() {
    return IconButton(
      onPressed: () {
        setState(() {
          adult--;
        });
      },

      icon: new Icon(Icons.remove, color: Colors.black),
      // backgroundColor: Colors.white,),
    );
  }
}










//   _incrementchild() {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           child++;
//         });
//       },

//       icon: new Icon(Icons.add, color: Colors.black),
//       // backgroundColor: Colors.white,),
//     );
//   }

//   _decrementChild() {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           child--;
//         });
//       },

//       icon: new Icon(Icons.remove, color: Colors.black),
//       // backgroundColor: Colors.white,),
//     );
//   }

//   _incrementbaby() {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           baby++;
//         });
//       },

//       icon: new Icon(Icons.add, color: Colors.black),
//       // backgroundColor: Colors.white,),
//     );
//   }

//   _decrementbaby() {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           baby--;
//         });
//       },

//       icon: new Icon(Icons.remove, color: Colors.black),
//       // backgroundColor: Colors.white,),
//     );
//   }
// }
