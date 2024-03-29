import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
import 'package:mytrip/Flight/checkout/credit.dart';

import 'package:mytrip/Flight/checkout/paypal.dart';
import 'package:mytrip/Flight/checkout/upi.dart';
import 'package:mytrip/Flight/search_flight.dart';

class Checkout_Flight extends StatefulWidget {
  Checkout_Flight({Key? key}) : super(key: key);

  @override
  State<Checkout_Flight> createState() => _Checkout_FlightState();
}

class _Checkout_FlightState extends State<Checkout_Flight>
    with TickerProviderStateMixin {
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
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (c) => SearchFlight()),
                (route) => true);
            //Navigator.pop(context);
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
                  text: 'Checkout',
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Price',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '₹4720',
                    style: TextStyle(
                        color: yellow,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Select Payment method',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
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
                              Icons.credit_card,
                              //  color: black,
                              // size: 25,
                            ),
                            SizedBox(width: 5),
                            Text("Card")
                          ]),

                          Row(children: [
                            Icon(
                              Icons.paypal_rounded,
                              // color: black,
                              size: 25,
                            ),

                            //SizedBox(width: 5),
                            Text("PayPal")
                          ]),

                          // Tab(text: 'Round Trip'),
                          Row(children: [
                            Icon(
                              Icons.double_arrow,
                              //color: black,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text("UPI")
                          ]),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 1,
                    child: TabBarView(
                      controller: tabController,
                      children: [Credit(), PayPal(), Upi()],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
