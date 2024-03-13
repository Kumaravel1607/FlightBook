import 'package:flutter/material.dart';
//import 'package:mytrip/Constant/color.dart';

class PayPal extends StatefulWidget {
  PayPal({Key? key}) : super(key: key);

  @override
  State<PayPal> createState() => _PayPalState();
}

class _PayPalState extends State<PayPal> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text('data'),
        //     Container(
        //       // height: 60,
        //       // width: 180,
        //       decoration: BoxDecoration(
        //         // color: Color.fromARGB(255, 235, 238, 240),
        //         border: Border(
        //           bottom: BorderSide(width: 1.0, color: grey),
        //         ),
        //         // border: Border.all(color: grey, width: 1),
        //         // borderRadius: BorderRadius.circular(5),
        //       ),
        //       child: Padding(
        //         padding: const EdgeInsets.only(
        //             left: 10, right: 10, top: 10, bottom: 10),
        //         child: Row(
        //           children: [
        //             Icon(Icons.calendar_month_outlined),
        //             SizedBox(
        //               width: 10,
        //             ),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   'DEPARTURE DATE',
        //                   style: TextStyle(
        //                       color: grey,
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w500),
        //                 ),
        //                 RichText(
        //                   text: TextSpan(
        //                       text: '17 Jun ',
        //                       style: TextStyle(
        //                           color: black,
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w600),
        //                       children: <TextSpan>[
        //                         TextSpan(
        //                           text: ' Sat,2023',
        //                           style: TextStyle(
        //                               color: black,
        //                               fontSize: 14,
        //                               fontWeight: FontWeight.w300),
        //                         )
        //                       ]),
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
