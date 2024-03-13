import 'package:flutter/material.dart';
import 'package:mytrip/Cars/AirportCab.dart';
import 'package:mytrip/Cars/HourlyRent.dart';
import 'package:mytrip/Cars/outstationCab.dart';
import 'package:mytrip/Constant/color.dart';

class Cars extends StatefulWidget {
  final String? categoryname;
  Cars({Key? key, required this.categoryname}) : super(key: key);

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> with TickerProviderStateMixin {
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
              text: 'Cab ',
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
                  child: Card(
                    color: greylite,
                    elevation: 3,
                    child: TabBar(
                      //indicatorPadding: EdgeInsets.all(5),
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
                      labelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      tabs: [
                        Tab(
                          text: 'OutStation\n    Cabs',
                        ),
                        Tab(
                          text: 'Airport\n  Cabs',
                        ),
                        Tab(
                          text: 'HourlyRent\n     Cabs',
                        )

                        // Row(children: [
                        //   Icon(
                        //     Icons.arrow_forward,
                        //     //  color: black,
                        //     size: 15,
                        //   ),
                        //   //SizedBox(width: 5),
                        //   Text(
                        //     "UPTO4ROOMS",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 11,
                        //         fontWeight: FontWeight.w500),
                        //   )
                        // ]),
                        // Row(children: [
                        //   Icon(
                        //     Icons.sync_alt,
                        //     // color: black,
                        //     size: 15,
                        //   ),

                        //   //SizedBox(width: 5),
                        //   Text(
                        //     "GROUPDEALS",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 11,
                        //         fontWeight: FontWeight.w500),
                        //   )
                        // ]),
                        // // Tab(text: 'Round Trip'),
                        // Row(children: [
                        //   Icon(
                        //     Icons.refresh,
                        //     //color: black,
                        //     size: 15,
                        //   ),
                        //   // SizedBox(width: 5),
                        //   Text(
                        //     "HOURLYSTAYS",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 11,
                        //         fontWeight: FontWeight.w500),
                        //   )
                        // ]),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1.4,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      OutStation(
                          // categoryname: widget.categoryname,
                          ),
                      AirportCab(
                          // categoryname: widget.categoryname,
                          ),
                      HourlyRent(
                          //categoryname: widget.categoryname,
                          ),
                      // Rooms(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
