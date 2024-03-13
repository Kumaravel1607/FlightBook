import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mytrip/Constant/color.dart';
//import 'package:mytrip/Hotel/rating.dart';
import 'package:mytrip/Hotel/select.dart';

class Hotel_search extends StatefulWidget {
  Hotel_search({Key? key}) : super(key: key);

  @override
  State<Hotel_search> createState() => _Hotel_searchState();
}

class _Hotel_searchState extends State<Hotel_search> {
  @override
  Widget build(BuildContext context) {
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
          'Select Hotel',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Trip',
                style: TextStyle(
                    color: dash, fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chennai',
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      // Text(
                      //   '20,Jun',
                      //   style: TextStyle(
                      //       color: black,
                      //       fontSize: 18,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 170, 171, 172),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Rooms',
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
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => SelectHotel()));
                    },
                    child: Image.asset(
                      'assets/images/filter.png',
                      width: 25,
                      height: 35,
                    ),
                  )
                ],
              ),
              Text(
                '20 Jun,2023',
                style: TextStyle(
                    color: dash, fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 0),
                            child: SizedBox(
                              height: 125,
                              child: Card(
                                color: Color.fromARGB(255, 248, 252, 253),
                                elevation: 3,
                                // color: yellow,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/r1.jpeg',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                          child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'HOTEL SAlBALA RESIDENCY',
                                                style: TextStyle(
                                                    color: black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                child: RatingBar.builder(
                                                    initialRating: 4,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemSize: 12,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.5),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                          Icons.star,
                                                          color: yellow,
                                                        ),
                                                    onRatingUpdate: (rating) {
                                                      // print(rating);
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    size: 15,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      '1.7 km from Chennai International Airport',
                                                      maxLines: 1,
                                                      softWrap: true,
                                                      style: TextStyle(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          color: tab,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                '₹2720/per night',
                                                style: TextStyle(
                                                    color: yellow,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ));
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
