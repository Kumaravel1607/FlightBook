import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
import 'package:mytrip/Flight/multicity.dart';
import 'package:mytrip/Flight/oneway.dart';
import 'package:mytrip/Flight/roundtrip.dart';

class Flight extends StatefulWidget {
  final String? categoryname;
  Flight({Key? key, required this.categoryname}) : super(key: key);

  @override
  State<Flight> createState() => _FlightState();
}

class _FlightState extends State<Flight> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
              text: 'Flight ',
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
      body: SingleChildScrollView(
        child: Container(
            color: white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 50,
                    child: Card(
                      color: greylite,
                      elevation: 2,
                      // height: 50,
                      child: TabBar(
                        //  indicatorPadding: EdgeInsets.all(10),
                        controller: tabController,
                        indicator: ShapeDecoration(
                            color: yellow,
                            //   shape: StadiumBorder(),
                            // ),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(5)))),
                        // color: Color.fromARGB(255, 109, 179, 236)),
                        // color: Colors.indigo,
                        unselectedLabelColor: black,
                        labelColor: white,
                        labelStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        tabs: [
                          Row(children: [
                            Icon(
                              Icons.arrow_forward,
                              //  color: black,
                              // size: 25,
                            ),
                            SizedBox(width: 5),
                            Text("OneWay")
                          ]),
                          Row(children: [
                            Icon(
                              Icons.sync_alt,
                              // color: black,
                              size: 25,
                            ),

                            //SizedBox(width: 5),
                            Text("RoundTrip")
                          ]),
                          // Tab(text: 'Round Trip'),
                          Row(children: [
                            Icon(
                              Icons.refresh,
                              //color: black,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text("Multicity")
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1.4,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Oneway(
                        categoryname: widget.categoryname,
                      ),
                      Roundtrip(
                        categoryname: widget.categoryname,
                      ),
                      Multicity(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
