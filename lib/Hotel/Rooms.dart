import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
import 'package:mytrip/Hotel/hotel_search.dart';

class Rooms extends StatefulWidget {
  final String? categoryname;
  Rooms({Key? key, required this.categoryname}) : super(key: key);

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  List FareNames = ['Hotels and Resorts', 'Homestays', 'Breakfast Included'];
  // List ReferNames = ['Refer & Earn', 'Refer & Earn', '', 'What is this?'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 25,
            color: black,
          ),
        ),
        elevation: 2,
        titleSpacing: 1,
        title: RichText(
          text: TextSpan(
              text: 'Hotel ',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
              children: <TextSpan>[
                TextSpan(
                  text: 'Search',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                )
              ]),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 10),
        //     child: Icon(
        //       Icons.list_rounded,
        //       color: black,
        //     ),
        //   )
        // ],
      ),
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
                  Container(
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
                          Icon(Icons.search),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('CHENNAI',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Text(
                                'India',
                                style: TextStyle(
                                    color: grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
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
                          Icon(Icons.calendar_month_outlined),
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
                                    text: '18 Jun ',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '23, Sun',
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
                              //       color: greylite,
                              //       fontSize: 14,
                              //       fontWeight: FontWeight.w400),
                              // ),
                            ],
                          )
                        ],
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
                    height: 10,
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
                          Icon(Icons.calendar_month_outlined),
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
                                    text: '19 Jun ',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '23,Mon',
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
                              //       color: greylite,
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
                    height: 10,
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
                  //                   color: greylite,
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

                  Container(
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
                                '1 Room,2 Adults & 0 Children  ',
                                style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
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
            'IMPROVE YOUR SEARCH',
            style: TextStyle(
                color: grey, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
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
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 40,
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
                  MaterialPageRoute(builder: (context) => Hotel_search()));
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => Navigation()));

              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => Navigation()));
            },
            child: Text(
              'SEARCH',
              style: TextStyle(
                color: white,
                fontSize: 18,
                fontFamily: 'IBMPlexSans',
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ]),
      )),
    );
  }
}
