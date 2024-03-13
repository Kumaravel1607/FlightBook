import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';

class PlaceSection extends StatefulWidget {
  PlaceSection({Key? key}) : super(key: key);

  @override
  State<PlaceSection> createState() => _PlaceSectionState();
}

class _PlaceSectionState extends State<PlaceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 220,
                  width: 170,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: grey, spreadRadius: 2, blurRadius: 1)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/r${index + 1}.jpeg',
                                height: 220,
                                width: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: Container(
                          //     margin: EdgeInsets.all(8),
                          //     height: 35,
                          //     width: 35,
                          //     decoration: BoxDecoration(
                          //         color: white,
                          //         shape: BoxShape.circle,
                          //         boxShadow: [
                          //           BoxShadow(
                          //               color: grey,
                          //               blurRadius: 1,
                          //               spreadRadius: 1)
                          //         ]),
                          //     child: Center(
                          //       child: Icon(
                          //         Icons.favorite_outline,
                          //         color: Blue,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Align(
                          //   alignment: Alignment.topCenter,
                          //   child: Container(
                          //     margin: EdgeInsets.all(10),
                          //     child: Text(
                          //       'Oia, Santorini',
                          //       style: TextStyle(
                          //           fontSize: 2,
                          //           fontWeight: FontWeight.w600,
                          //           color: white),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 5),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         'Explore this magical place in',
                      //         style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w600,
                      //             color: black),
                      //       ),
                      //       SizedBox(
                      //         height: 5,
                      //       ),
                      //       Text(
                      //         'Greece',
                      //         style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w700,
                      //             color: black),
                      //       ),
                      //       SizedBox(
                      //         height: 5,
                      //       ),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Row(
                      //             children: [
                      //               Icon(
                      //                 Icons.location_on_sharp,
                      //                 color: Blue,
                      //               ),
                      //               Text(
                      //                 'Oia, Santorini',
                      //                 style: TextStyle(
                      //                     fontSize: 16,
                      //                     fontWeight: FontWeight.w500,
                      //                     color: black),
                      //               ),
                      //             ],
                      //           ),
                      //           Row(
                      //             children: [
                      //               Icon(
                      //                 Icons.star_border,
                      //                 color: Blue,
                      //               ),
                      //               Text(
                      //                 '4.5',
                      //                 style: TextStyle(
                      //                     fontSize: 16,
                      //                     fontWeight: FontWeight.w500,
                      //                     color: black),
                      //               ),
                      //             ],
                      //           )
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Paris, France',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: black),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
