import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
//import 'package:mytrip/Flight/roundtrip.dart';

class Oneway extends StatefulWidget {
  final String? categoryname;
  Oneway({Key? key, required this.categoryname}) : super(key: key);

  @override
  State<Oneway> createState() => _OnewayState();
}

class _OnewayState extends State<Oneway> {
  List FareNames = ['Student', 'Armed Forces', 'Senior Citizen', 'Double Seat'];
  List ReferNames = ['Refer & Earn', 'Refer & Earn', '', 'What is this?'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 238, 240),
                      border: Border.all(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
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
                                    color: greylite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'New Delhi ',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'DEL',
                                        style: TextStyle(
                                            color: greylite,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ]),
                              ),
                              Text(
                                'Indira Gandhi International Airport',
                                style: TextStyle(
                                    color: greylite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 235, 238, 240),
                          border: Border.all(color: grey, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.swap_vert,
                          color: Color.fromARGB(255, 90, 148, 247),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 238, 240),
                      border: Border.all(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
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
                                    color: greylite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Mumbai ',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'BOM',
                                        style: TextStyle(
                                            color: greylite,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ]),
                              ),
                              Text(
                                'Chhatrapati Shivaji International Airport',
                                style: TextStyle(
                                    color: greylite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 235, 238, 240),
                          border: Border.all(color: grey, width: 1),
                          borderRadius: BorderRadius.circular(5),
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
                                        color: greylite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: '17 Jun ',
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: ' Sat,2023',
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
                      Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 235, 238, 240),
                          border: Border.all(color: grey, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 15, bottom: 10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      '+ADD RETURN DATE',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 90, 148, 247),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Save more on round trips!',
                                    style: TextStyle(
                                        color: greylite,
                                        fontSize: 12,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 238, 240),
                      border: Border.all(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
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
                                    color: greylite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: '1,  ',
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Economy/Premium Economy',
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
                color: greylite, fontSize: 14, fontWeight: FontWeight.w500),
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
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            ReferNames[index],
                            style: TextStyle(
                                fontSize: 12,
                                color: yellow,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          )),
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
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => Navigation()));
            },
            child: Text(
              'SEARCH FLIGHTS',
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
