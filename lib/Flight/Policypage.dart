import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';

class ShowSheet extends StatefulWidget {
  ShowSheet({Key? key}) : super(key: key);

  @override
  State<ShowSheet> createState() => _ShowSheetState();
}

class _ShowSheetState extends State<ShowSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          'Trip to',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: grey),
                        ),
                        Text(
                          'Mumbai',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: black),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/plane.png',
                        width: 30,
                        height: 50,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DEL- MUM',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: black),
                          ),
                          Text(
                            'Fri,22 Jun | 5:20-9:20 | 4h|1Stop',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: greytext),
                          ),
                          Text(
                            'Economy > SAVER',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: black),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: light,
            ),
          ],
        ),
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  //  text: '₹' + widget.price,
                  // text: "₹" + widget.price,

                  text: '₹220',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '/person \n incl. all taxes',
                        style: TextStyle(
                            color: tab,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ],
                ),
              ),
              // MaterialButton(
              //   height: 45,
              //   minWidth: 190,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: new BorderRadius.circular(22)),
              //   onPressed: () {
              //     // Navigator.of(context).pushReplacement(MaterialPageRoute(
              //     //     builder: (BuildContext context) => BookSlot()));
              //   },
              //   child: Wrap(
              //     children: [
              //       Align(
              //         alignment: Alignment.center,
              //         child: Text('Book now',
              //             style: TextStyle(
              //               fontSize: 16,
              //               fontWeight: FontWeight.w500,
              //               color: white,
              //             )),
              //       ),
              //       Icon(
              //         Icons.chevron_right,
              //         color: white,
              //         size: 20,
              //       )
              //     ],
              //   ),
              //   color: red,
              // ),
              MaterialButton(
                height: 45,
                minWidth: 190,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(22)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (BuildContext context) => ShowSheet()));
                },
                child: Wrap(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text('Continue',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: white,
                          )),
                    ),
                    Center(
                      child: Icon(
                        Icons.chevron_right,
                        color: white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                color: yellow,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Luggage() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
        child: SizedBox(
//height: 135,
          child: GestureDetector(
              onTap: () {
                // setState(() {
                //   _pageController = index;
                // });
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(
                //         builder:
                //             (BuildContext context) =>
                //                 Checkout_Flight()));
              },
              child: _card1()),
        ));
  }

  Widget Luggage2() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
        child: SizedBox(
//height: 135,
          child: GestureDetector(
              onTap: () {
                // setState(() {
                //   _pageController = index;
                // });
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(
                //         builder:
                //             (BuildContext context) =>
                //                 Checkout_Flight()));
              },
              child: _card2()),
        ));
  }

  _card1() {
    return Card(
      color: Color.fromARGB(255, 248, 252, 253),
      elevation: 3,
      // color: yellow,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Economy Saver',
                        style: TextStyle(
                          color: black,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Text(
                        'Fare offered by airline.',
                        style: TextStyle(
                          color: greytext,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '₹4720',
                    style: TextStyle(
                      color: yellow,
                      // color: Color.fromARGB(255, 248, 224, 6),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage1.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cabin bag',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Check-in',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/rupee.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cancellation',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/calendar.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Date Change',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹4000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹3000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 90,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 241, 189),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: yellow)),
                    child: Center(
                        child: Text(
                      'Lock Price',
                      style:
                          TextStyle(color: yellow, fontWeight: FontWeight.w600),
                    ))),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    _showBottomSheet();
                  },
                  child: Container(
                      width: 90,
                      height: 28,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 247, 226, 43),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: yellow)),
                      child: Center(
                          child: Text(
                        'Book Now',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w600),
                      ))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _card2() {
    return Card(
      color: Color.fromARGB(255, 248, 252, 253),
      elevation: 3,
      // color: yellow,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Economy Basic',
                        style: TextStyle(
                          color: black,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Text(
                        'Fare offered by airline.',
                        style: TextStyle(
                          color: greytext,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '₹6320',
                    style: TextStyle(
                      color: yellow,
                      // color: Color.fromARGB(255, 248, 224, 6),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage1.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cabin bag',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Check-in',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/rupee.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cancellation',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/calendar.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Date Change',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹3000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹2000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 90,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 241, 189),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: yellow)),
                    child: Center(
                        child: Text(
                      'Lock Price',
                      style:
                          TextStyle(color: yellow, fontWeight: FontWeight.w600),
                    ))),
                SizedBox(
                  width: 15,
                ),
                Container(
                    width: 90,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 226, 43),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: yellow)),
                    child: Center(
                        child: Text(
                      'Book Now',
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w600),
                    )))
              ],
            ),
          ],
        ),
      ),
    );
  }

  _card3() {
    return Card(
      color: Color.fromARGB(255, 248, 252, 253),
      elevation: 3,
      // color: yellow,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Economy Saver',
                        style: TextStyle(
                          color: black,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Text(
                        'Fare offered by airline.',
                        style: TextStyle(
                          color: greytext,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '₹4720',
                    style: TextStyle(
                      color: yellow,
                      // color: Color.fromARGB(255, 248, 224, 6),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage1.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cabin bag',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Check-in',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/rupee.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cancellation',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/calendar.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Date Change',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹4000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹3000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _card4() {
    return Card(
      color: Color.fromARGB(255, 248, 252, 253),
      elevation: 3,
      // color: yellow,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Economy Basic',
                        style: TextStyle(
                          color: black,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Text(
                        'Fare offered by airline.',
                        style: TextStyle(
                          color: greytext,
                          // color: Color.fromARGB(255, 248, 224, 6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '₹6320',
                    style: TextStyle(
                      color: yellow,
                      // color: Color.fromARGB(255, 248, 224, 6),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage1.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cabin bag',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/luggage.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Check-in',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/rupee.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cancellation',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/calendar.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Date Change',
                          style: TextStyle(
                            color: black,
                            // color: Color.fromARGB(255, 248, 224, 6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '25 Kgs',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cancellation Fee Starting ₹3000',
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Date Change Fee Starting ₹2000',
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        color: dash,
                        // color: Color.fromARGB(255, 248, 224, 6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showBottomSheet() {
    showModalBottomSheet<dynamic>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Wrap(children: <Widget>[
            Container(
              child: Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(25.0),
                        topRight: const Radius.circular(25.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/air2.png',
                                    width: 60,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Deccan Air',
                                    style: TextStyle(
                                      color: black,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      color: black,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'BKN7',
                                    style: TextStyle(
                                      color: black,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '21:50',
                                        style: TextStyle(
                                          color: black,
                                          // color: Color.fromARGB(255, 248, 224, 6),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Wed,21 Jun 23',
                                        style: TextStyle(
                                          color: black,
                                          // color: Color.fromARGB(255, 248, 224, 6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '1 hr 50 mins',
                                        style: TextStyle(
                                          color: grey,
                                          // color: Color.fromARGB(255, 248, 224, 6),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        Icons.watch_later_outlined,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '23:50',
                                        style: TextStyle(
                                          color: black,
                                          // color: Color.fromARGB(255, 248, 224, 6),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Wed,21 Jun 23',
                                        style: TextStyle(
                                          color: black,
                                          // color: Color.fromARGB(255, 248, 224, 6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'New Delhi',
                                    style: TextStyle(
                                      color: black,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Mumbai',
                                    style: TextStyle(
                                      color: black,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Dr. MGR International \nAirport',
                                    style: TextStyle(
                                      color: black,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Indira Gandhi International\n Airport',
                                    style: TextStyle(
                                      color: black,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Terminal 1',
                                    style: TextStyle(
                                      color: grey,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Terminal4',
                                    style: TextStyle(
                                      color: grey,
                                      // color: Color.fromARGB(255, 248, 224, 6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      _card3(),
                      _card4()
                    ],
                  ),
                ),
              ),
            ),
          ]);
        });
  }
}
