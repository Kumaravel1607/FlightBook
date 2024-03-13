import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';

class Hotel_location extends StatefulWidget {
  Hotel_location({Key? key}) : super(key: key);

  @override
  State<Hotel_location> createState() => _Hotel_locationState();
}

class _Hotel_locationState extends State<Hotel_location> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            padding: const EdgeInsets.all(5),
                            child: Center(
                              child: Text(
                                'Key Landmarks',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
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
                        itemCount: 4,
                        // itemCount: _search.length,
                        itemBuilder: (context, index) {
                          // final search = _search[index];
                          return Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Marina Beach',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: black,
                                      ),
                                    ),
                                    Text(
                                      'Tourist Attraction',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: dash,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '4.8 km',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
