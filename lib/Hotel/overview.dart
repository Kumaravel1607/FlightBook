import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';

class Overview extends StatefulWidget {
  Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Card(
          child: Column(
        children: [
          Text(
            'About This Property',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: black,
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: black,
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  icon: Icon(Icons.chevron_right, color: Blue))
            ],
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  icon: Icon(Icons.chevron_right, color: Blue))
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View All',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Blue,
              ),
            ),
          )
        ],
      )),
      Card(
          child: Column(
        children: [
          Text(
            'Property Highlights',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: black,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Value for Money',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                '11 Reviews',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Blue,
                ),
              ),
            ),
          ]),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Distance from Beach',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                '7 Reviews',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Blue,
                ),
              ),
            ),
          ]),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    fontWeight: FontWeight.w600,
                    color: Blue,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.done),
              Text(
                '230+ Couples rated their stay Very Good ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Blue,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.calendar_month),
              Text(
                'Perfect for one-night stay!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Blue,
                ),
              ),
            ],
          )
        ],
      ))
    ])));
  }
}
