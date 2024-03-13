import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class ExScroll extends StatefulWidget {
  ExScroll({Key? key}) : super(key: key);

  @override
  State<ExScroll> createState() => _ExScrollState();
}

class _ExScrollState extends State<ExScroll> {
  var scrollController = ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          body: Container(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: false,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  // title: Text('Goa', textScaleFactor: 1),
                  background: Image.asset(
                    'assets/images/r1.jpeg',
                    fit: BoxFit.fill,
                  ),
                  stretchModes: [StretchMode.zoomBackground],
                ),
                //collapsedHeight: 100,
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ScrollableListTabView(
                      // tabHeight: 48,
                      // bodyAnimationDuration: const Duration(milliseconds: 150),
                      // tabAnimationCurve: Curves.easeOut,
                      // tabAnimationDuration: const Duration(milliseconds: 200),

                      tabs: [
                        ScrollableListTab(
                            tab: ListTab(
                                label: Text('OVERVIEW'),

                                //icon: Icon(Icons.group),
                                showIconOnList: false),
                            body: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (_, index) => Column(children: [
                                      Card(
                                          child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'About This Property',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Divider(
                                              height: 1,
                                              thickness: 1,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Food and Dining',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: black,
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.chevron_right,
                                                        color: yellow))
                                              ],
                                            ),
                                            Divider(
                                              height: 1,
                                              thickness: 1,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Location & Surroundings',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: black,
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.chevron_right,
                                                        color: yellow))
                                              ],
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'View All',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: yellow,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                      Card(
                                          child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Property Highlights',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: black,
                                              ),
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Value for Money',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: black,
                                                    ),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      '11 Reviews',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: yellow,
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                            Divider(
                                              height: 1,
                                              thickness: 1,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Distance from Beach',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: black,
                                                    ),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      '7 Reviews',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: yellow,
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                            Divider(
                                              height: 1,
                                              thickness: 1,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Pool',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: black,
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    '15 Reviews',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: yellow,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.done),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  '230+ Couples rated their stay Very Good ',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: yellow,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.calendar_month),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Perfect for one-night stay!',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: yellow,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'View All Highlights',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: yellow,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                    ]))),
                        ScrollableListTab(
                            tab: ListTab(
                              label: Text('REVIEWS'),
                              // icon: Icon(Icons.add),
                            ),
                            body: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (_, index) => Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Reviews & Ratings',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: black,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      color: yellow),
                                                  child: Center(
                                                    child: Text(
                                                      '4.5',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Excellent',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: yellow,
                                                      ),
                                                    ),
                                                    Text(
                                                      '656 User Reviews and 1204 Ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: dash,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Last 10 Customer Ratings(Latest Rating First)',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: dash,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            SizedBox(
                                              height: 30,
                                              child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  physics: ScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount: 10,
                                                  // itemCount: _search.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    // final search = _search[index];
                                                    return Container(
                                                      height: 25,
                                                      width: 25,
                                                      margin: EdgeInsets.all(3),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                              color: yellow,
                                                              width: 1)),
                                                      child: Center(
                                                        child: Text(
                                                          '4',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: yellow,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Rating Score Card',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: dash,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                                height: 60,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: grey, width: 1)),
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    physics: ScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: 4,
                                                    // itemCount: _search.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      // final search = _search[index];
                                                      return Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5,
                                                                horizontal: 20),
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              '4.8',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: yellow,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Room',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: dash,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    })),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Divider(
                                              height: 1,
                                              thickness: 1,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                                height: 100,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    // border: Border.all(color: grey, width: 1)
                                                    ),
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    physics: ScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: 4,
                                                    // itemCount: _search.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      // final search = _search[index];
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Image.asset(
                                                            'assets/images/r1.jpeg',
                                                            width: 80,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      );
                                                    })),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Divider(
                                              color: greylite,
                                              height: 2,
                                              thickness: 10,
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Featured Reviews by Couples',
                                              style: TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600,
                                                color: black,
                                              ),
                                            ),
                                            Container(
                                                //height: 100,
                                                // width: double.infinity,
                                                decoration: BoxDecoration(
                                                    // border: Border.all(color: grey, width: 1)
                                                    ),
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    physics: ScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: 2,
                                                    // itemCount: _search.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      // final search = _search[index];
                                                      return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          child: Container(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Luxurious stay!',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color:
                                                                                black,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Parag G',
                                                                              style: TextStyle(
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.w600,
                                                                                color: grey,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 5,
                                                                            ),
                                                                            Text(
                                                                              '•',
                                                                              style: TextStyle(
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.w600,
                                                                                color: dash,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 5,
                                                                            ),
                                                                            Text(
                                                                              'Couple',
                                                                              style: TextStyle(
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.w600,
                                                                                color: grey,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 5,
                                                                            ),
                                                                            Text(
                                                                              '•',
                                                                              style: TextStyle(
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.w600,
                                                                                color: dash,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 5,
                                                                            ),
                                                                            Text(
                                                                              'Feb 14,2023',
                                                                              style: TextStyle(
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.w600,
                                                                                color: grey,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          30,
                                                                      width: 30,
                                                                      margin: EdgeInsets
                                                                          .all(
                                                                              3),
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          border: Border.all(
                                                                              color: yellow,
                                                                              width: 1)),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          '4.0',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color:
                                                                                yellow,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: dash,
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  thickness: 1,
                                                                ),
                                                                Text(
                                                                  'Read All 654 Reviews',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        yellow,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ));
                                                    })),
                                          ],
                                        ),
                                      ),
                                    ))),
                        ScrollableListTab(
                            tab: ListTab(
                              label: Text('LOCATION'),
                              //  icon: Icon(Icons.group)
                            ),
                            body: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              itemBuilder: (_, index) => Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Location',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: black,
                                        ),
                                      ),
                                      Text(
                                        'Adyar Seaface M.R.C Nagar Chennai',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: dash,
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: double.infinity,
                                      ),
                                      SizedBox(
                                        height: 40,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            physics: ScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 10,
                                            // itemCount: _search.length,
                                            itemBuilder: (context, index) {
                                              // final search = _search[index];
                                              return Card(
                                                elevation: 1,
                                                // height: 25,
                                                // width: double.infinity,
                                                // margin: EdgeInsets.all(3),
                                                // decoration: BoxDecoration(
                                                //     borderRadius: BorderRadius.circular(5),
                                                //     border: Border.all(color: yellow, width: 1)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: Center(
                                                    child: Text(
                                                      'Key Landmarks',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: yellow,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                      // Container(
                                      //     height: 40,
                                      //     width: double.infinity,
                                      //     decoration: BoxDecoration(color: grey
                                      //         //border: Border.all(color: grey, width: 1)
                                      //         ),
                                      //     child: ListView.builder(
                                      //         scrollDirection: Axis.horizontal,
                                      //         physics: ScrollPhysics(),
                                      //         shrinkWrap: true,
                                      //         itemCount: 4,
                                      //         // itemCount: _search.length,
                                      //         itemBuilder: (context, index) {
                                      //           // final search = _search[index];
                                      //           return Card(
                                      //             child: Padding(
                                      //               padding: const EdgeInsets.all(5),
                                      //               child: Center(
                                      //                 child: Text(
                                      //                   'Key Landmarks',
                                      //                   style: TextStyle(
                                      //                     fontSize: 14,
                                      //                     fontWeight: FontWeight.w600,
                                      //                     color: yellow,
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           );
                                      //         })),
                                      Container(
                                          //width: double.infinity,
                                          decoration: BoxDecoration(
                                              //border: Border.all(color: grey, width: 1)
                                              ),
                                          child: ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              physics: ScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: 1,
                                              // itemCount: _search.length,
                                              itemBuilder: (context, index) {
                                                // final search = _search[index];
                                                return Column(children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Marina Beach',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: black,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Tourist Attraction',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: dash,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        '4.8 km',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: dash,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Divider(
                                                    thickness: 1,
                                                  )
                                                ]);
                                              })),
                                      Text(
                                        'Show Nearby Places',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: yellow,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  //  TabBar(
                  //   tabs: [
                  //     Tab(
                  //       child: Text(
                  //         "OVERVIEW",
                  //         style: TextStyle(
                  //             color: black,
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w600),
                  //       ),
                  //     ),
                  //     Tab(
                  //       child: Text(
                  //         "REVIEW",
                  //         style: TextStyle(
                  //             color: black,
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w600),
                  //       ),
                  //     ),
                  //     Tab(
                  //       child: Text(
                  //         "LOCATION",
                  //         style: TextStyle(
                  //             color: black,
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w600),
                  //       ),
                  //     ),
                  //     // Tab(icon: Icon(Icons.directions_transit)),
                  //     // Tab(icon: Icon(Icons.directions_car)),
                  //   ],
                  // ),
                  // ),
                  // delegate: MySliverPersistentHeaderDelegate(
                  //   TabBar(
                  //     tabs: [
                  //       Tab(icon: Icon(Icons.flight)),
                  //       Tab(icon: Icon(Icons.directions_transit)),
                  //       Tab(icon: Icon(Icons.directions_car)),
                  //     ],
                  //   ),
                  // ),
                  maxHeight: 500, minHeight: 500,
                ),
                pinned: true,
              )
            ];
          },
          // body: ScrollableListTabView(
          //   tabHeight: 48,
          //   bodyAnimationDuration: const Duration(milliseconds: 150),
          //   tabAnimationCurve: Curves.easeOut,
          //   tabAnimationDuration: const Duration(milliseconds: 200),
          //   tabs: [
          //     ScrollableListTab(
          //         tab: ListTab(
          //             label: Text('Vegetables'),
          //             icon: Icon(Icons.group),
          //             showIconOnList: false),
          //         body: ListView.builder(
          //           shrinkWrap: true,
          //           physics: NeverScrollableScrollPhysics(),
          //           itemCount: 10,
          //           itemBuilder: (_, index) => ListTile(
          //             leading: Container(
          //               height: 40,
          //               width: 40,
          //               decoration: BoxDecoration(
          //                   shape: BoxShape.circle, color: Colors.grey),
          //               alignment: Alignment.center,
          //               child: Text(index.toString()),
          //             ),
          //             title: Text('Vegetables element $index'),
          //           ),
          //         )),
          //     ScrollableListTab(
          //         tab: ListTab(label: Text('Fruits'), icon: Icon(Icons.add)),
          //         body: ListView.builder(
          //           shrinkWrap: true,
          //           physics: NeverScrollableScrollPhysics(),
          //           itemCount: 10,
          //           itemBuilder: (_, index) => ListTile(
          //             leading: Container(
          //               height: 40,
          //               width: 40,
          //               decoration: BoxDecoration(
          //                   shape: BoxShape.circle, color: Colors.grey),
          //               alignment: Alignment.center,
          //               child: Text(index.toString()),
          //             ),
          //             title: Text('Fruits element $index'),
          //           ),
          //         )),
          //     ScrollableListTab(
          //         tab: ListTab(label: Text('Meat'), icon: Icon(Icons.group)),
          //         body: ListView.builder(
          //           shrinkWrap: true,
          //           physics: NeverScrollableScrollPhysics(),
          //           itemCount: 10,
          //           itemBuilder: (_, index) => ListTile(
          //             leading: Container(
          //               height: 40,
          //               width: 40,
          //               decoration: BoxDecoration(
          //                   shape: BoxShape.circle, color: Colors.grey),
          //               alignment: Alignment.center,
          //               child: Text(index.toString()),
          //             ),
          //             title: Text('Meat element $index'),
          //           ),
          //         )),
          //     ScrollableListTab(
          //         tab: ListTab(
          //             label: Text('Herbs&Spices'), icon: Icon(Icons.subject)),
          //         body: GridView.builder(
          //           shrinkWrap: true,
          //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //               crossAxisCount: 2),
          //           physics: NeverScrollableScrollPhysics(),
          //           itemCount: 10,
          //           itemBuilder: (_, index) => Card(
          //             child: Center(child: Text('Herbs&Spices element $index')),
          //           ),
          //         )),
          //     ScrollableListTab(
          //         tab: ListTab(
          //             label: Text('Egg'),
          //             icon: Icon(Icons.subject),
          //             showIconOnList: true),
          //         body: GridView.builder(
          //           shrinkWrap: true,
          //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //               crossAxisCount: 2),
          //           physics: NeverScrollableScrollPhysics(),
          //           itemCount: 10,
          //           itemBuilder: (_, index) => Card(
          //             child: Center(child: Text('Egg element $index')),
          //           ),
          //         )),
          //   ],
          // ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  // 2
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  // 3
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
