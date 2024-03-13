import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';

class Reviews extends StatefulWidget {
  Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
            child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      borderRadius: BorderRadius.circular(5), color: yellow),
                  child: Center(
                    child: Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Excellent',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: yellow,
                      ),
                    ),
                    Text(
                      '656 User Reviews and 1204 Ratings',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
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
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  // itemCount: _search.length,
                  itemBuilder: (context, index) {
                    // final search = _search[index];
                    return Container(
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: yellow, width: 1)),
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
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
                decoration:
                    BoxDecoration(border: Border.all(color: grey, width: 1)),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    // itemCount: _search.length,
                    itemBuilder: (context, index) {
                      // final search = _search[index];
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Column(
                          children: [
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: yellow,
                              ),
                            ),
                            Text(
                              'Room',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
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
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    // itemCount: _search.length,
                    itemBuilder: (context, index) {
                      // final search = _search[index];
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
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
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    // itemCount: _search.length,
                    itemBuilder: (context, index) {
                      // final search = _search[index];
                      return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Luxurious stay!',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black,
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
                                      height: 30,
                                      width: 30,
                                      margin: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: yellow, width: 1)),
                                      child: Center(
                                        child: Text(
                                          '4.0',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: yellow,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: dash,
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Text(
                                  'Read All 654 Reviews',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: yellow,
                                  ),
                                ),
                              ],
                            ),
                          ));
                    })),
          ],
        ),
      ),
    )));
  }
}
