import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';

class Location extends StatefulWidget {
  Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class Debouncer {
  int? milliseconds;
  VoidCallback? action;
  Timer? timer;

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      Duration(milliseconds: Duration.millisecondsPerSecond),
      action,
    );
  }
}

class _LocationState extends State<Location> {
  // late List<StadiumList> users = [];

  // List<StadiumList> _search = [];
  final _debouncer = Debouncer();

  // List<Subject> ulist = [];
  // List<Subject> userLists = [];

  @override
  void initState() {
    super.initState();
    // users = [];
    //fetchstadium();
  }

  // void _Filter(String keyword) {
  //   List<Map<String, dynamic>> result = [];
  //   if (keyword.isEmpty) {
  //     result = users.cast<Map<String, dynamic>>();
  //   } else {}
  // }

  // fetchstadium() async {
  //   SharedPreferences session = await SharedPreferences.getInstance();
  //   print("--------");
  //   var email = session.getString('email');

  //   print("--------");
  //   print(email);
  //   // print(date);
  //   Services.stadium().then((results) {
  //     setState(() {
  //       // if (date != null) {
  //       users = results;
  //       _search = users;

  //       //print(users[0].gameTittle);
  //       // } else {
  //       //   print('error');
  //       // }
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   elevation: 1,
        //   backgroundColor: white,
        //   leadingWidth: 20,
        //   leading: GestureDetector(
        //     onTap: () {
        //       // Navigator.push(
        //       //   context,
        //       //   MaterialPageRoute(builder: (context) => Navigation()),
        //       // );
        //     },
        //     child: Icon(
        //       Icons.chevron_left,
        //       color: black,
        //     ),
        //   ),
        //   title: Text(
        //     '',
        //     style: TextStyle(
        //       color: black,
        //       fontFamily: 'IBMPlexSans',
        //       fontWeight: FontWeight.w500,
        //       fontSize: 16,
        //     ),
        //     overflow: TextOverflow.ellipsis,
        //   ),
        // ),
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onChanged: (string) {
                  _debouncer.run(() {
                    setState(() {
                      // _search = users
                      //     .where(
                      //       (u) => (u.stadiumName.toLowerCase().contains(
                      //             string.toLowerCase(),
                      //           )),
                      //     )
                      //     .toList();
                    });
                  });
                },
                // onChanged: (value) => _filter(value),
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 248, 242, 190),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.yellow),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: grey),
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.only(left: 20),
                    hintText: 'Search City location',
                    prefixIcon: GestureDetector(
                      onTap: () {
                        Navigator.canPop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: black,
                      ),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Airport Suggestions',
                style: TextStyle(
                  color: greytext,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  // itemCount: _search.length,
                  itemBuilder: (context, index) {
                    // final search = _search[index];
                    return Container(
                      child: ListTile(
                        leading: Icon(Icons.flight_takeoff_outlined),
                        horizontalTitleGap: 1,
                        title: Text(
                          "Chennai",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          "Chennai International Airport",
                          style: TextStyle(
                            color: greytext,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        trailing: Text(
                          "MAA",
                          style: TextStyle(
                            color: greytext,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    )));
  }
}
