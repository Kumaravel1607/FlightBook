//import 'dart:math';

// import 'package:customizable_date_picker/customizable_date_picker.dart';
// import 'package:customizable_date_picker/models.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_date_picker/full_screen_date_picker.dart';
import 'package:intl/intl.dart';
//import 'package:mytrip/Constant/color.dart';

class BookDate extends StatefulWidget {
  BookDate({Key? key}) : super(key: key);

  @override
  State<BookDate> createState() => _BookDateState();
}

class _BookDateState extends State<BookDate> {
  String selectedDate = 'Selected a date';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // View selected date in the screen
      body: FullScreenDatePicker(),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     boxShadow: <BoxShadow>[
      //       BoxShadow(
      //         color: light,
      //       ),
      //     ],
      //   ),
      //   height: 70,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Container(
      //           height: 50,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             border: Border.all(color: Colors.blueAccent),
      //             borderRadius: BorderRadius.circular(5),
      //           ),
      //           child: Column(
      //             children: [
      //               Text(
      //                 'DEPARTURE DATE',
      //                 style: TextStyle(
      //                     fontSize: 14,
      //                     color: yellow,
      //                     fontWeight: FontWeight.w600),
      //               ),
      //               Text(
      //                 selectedDate,
      //                 style: TextStyle(
      //                     fontSize: 14,
      //                     color: black,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           width: 150,
      //           height: 50,
      //           child: MaterialButton(
      //             // height: 45,
      //             // minWidth: 100,
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: new BorderRadius.circular(10)),
      //             onPressed: () {
      //               // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //               //     builder: (BuildContext context) => ShowSheet()));
      //             },
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Align(
      //                   alignment: Alignment.center,
      //                   child: Text('Continue',
      //                       style: TextStyle(
      //                         fontSize: 18,
      //                         fontWeight: FontWeight.w700,
      //                         color: white,
      //                       )),
      //                 ),
      //                 Center(
      //                   child: Icon(
      //                     Icons.chevron_right,
      //                     color: white,
      //                     size: 25,
      //                   ),
      //                 )
      //               ],
      //             ),
      //             color: yellow,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      // Center(child: Text(selectedDate)),
      // Button to show the date dialog
      //floatingActionButton: FloatingActionButton(onPressed: () => onPressed()),
    );
  }

  //String selectedDate = 'Selected a date';
  void Datepick() async {
    DateTime result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => FullScreenDatePicker()),
    );

    String formattedDate = DateFormat.yMMMEd().format(result);

    setState(() => this.selectedDate = formattedDate.toString());
  }

  void onPressed() async {
    DateTime result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => FullScreenDatePicker()),
    );

    setState(() => this.selectedDate = result.toString());
  }
}












// //  CustomDatePickerController _controller = new CustomDatePickerController();
//   DateTime _date = DateTime.now();
//   static var date1 = DateTime.now();
//   var customDate = "${date1.day}-${date1.month}-${date1.year}";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(_date == null
//                 ? 'Today'
//                 : "${date1.day.toString().padLeft(2, '0')}-${date1.month.toString().padLeft(2, '0')}-${date1.year.toString()}"),
//             TextButton.icon(
//               //color: Colors.teal,
//               icon: Icon(Icons.calendar_today),
//               label: Text('Pick Date'),

//               onPressed: () {
//                 showDatePicker(
//                         context: context,
//                         initialDate: _date == null ? DateTime.now() : _date,
//                         firstDate: DateTime(2001),
//                         lastDate: DateTime(2050))
//                     .then((date) {
//                   setState(() {
//                     customDate =
//                         "${date!.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year.toString()}";
//                   });
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class BookDate extends StatefulWidget {
//   BookDate({Key? key}) : super(key: key);

//   @override
//   State<BookDate> createState() => _BookDateState();
// }

// class _BookDateState extends State<BookDate> {
//   DateTimeRange? _selectedDateRange;

//   // This function will be triggered when the floating button is pressed
//   void _show() async {
//     final DateTimeRange? result = await showDateRangePicker(
//       context: context,
//       firstDate: DateTime(2022, 1, 1),
//       lastDate: DateTime(2030, 12, 31),
//       currentDate: DateTime.now(),
//       saveText: 'Done',
//     );

//     if (result != null) {
//       // Rebuild the UI
//       print(result.start.toString());
//       setState(() {
//         _selectedDateRange = result;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('KindaCode.com')),
//       body: _selectedDateRange == null
//           ? const Center(
//               child: Text('Press the button to show the picker'),
//             )
//           : Padding(
//               padding: const EdgeInsets.all(30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Start date
//                   Text(
//                     "Start date: ${_selectedDateRange?.start.toString().split(' ')[0]}",
//                     style: const TextStyle(fontSize: 24, color: Colors.blue),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   // End date
//                   Text(
//                       "End date: ${_selectedDateRange?.end.toString().split(' ')[0]}",
//                       style: const TextStyle(fontSize: 24, color: Colors.red))
//                 ],
//               ),
//             ),
//       // This button is used to show the date range picker
//       floatingActionButton: FloatingActionButton(
//         onPressed: _show,
//         child: const Icon(Icons.date_range),
//       ),
//     );
//   }
// }

// DateTimeRange? _selectedDateRange;

// // This function will be triggered when the floating button is pressed
// void _show() async {
//   final DateTimeRange? result = await showDateRangePicker(
//     context: context,
//     firstDate: DateTime(2022, 1, 1),
//     lastDate: DateTime(2030, 12, 31),
//     currentDate: DateTime.now(),
//     saveText: 'Done',
//   );

//   if (result != null) {
//     // Rebuild the UI
//     print(result.start.toString());
//     setState(() {
//       _selectedDateRange = result;
//     });
//   }
// }

//   @override
//   void initState() {
//     // _controller.onRangeSelected = (DateTime s, DateTime e) {
//     //   setState(() {
//     //     start = s;
//     //     end = e;
//     //   });
//     // };
//     Future.delayed(
//         Duration(seconds: 1), () => _controller.scrollTo(DateTime.now()));
//     super.initState();
//   }

//   Widget _monthTitleBuilder(DateTime date) {
//     final f = DateFormat('MMMM, yyyy');
//     String formattedText = f.format(date);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(
//           height: 20,
//         ),
//         // Container(
//         //   width: MediaQuery.of(context).size.width * .7,
//         //   height: 3,
//         //   decoration: BoxDecoration(
//         //       gradient: LinearGradient(
//         //     colors: [black, Colors.transparent],
//         //     begin: Alignment.topLeft,
//         //     end: Alignment.bottomRight,
//         //   )),
//         // ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Container(
//                 padding: EdgeInsets.only(left: 15, top: 10),
//                 child: Text(
//                   formattedText,
//                   style: TextStyle(
//                       fontSize: 25, fontWeight: FontWeight.w500, color: black),
//                 )),
//           ],
//         ),
//         SizedBox(
//           height: 20,
//         ),
//       ],
//     );
//   }

//   DateTime? start, end;
//   Widget _dayItemBuilder(CustomDay day, int index) {
//     bool isSelected = true;
//     var br;
//     var borderSide = BorderSide(
//       color: Colors.blue,
//       width: 1.0,
//     );
//     Color color = Colors.white;
//     if (start == null || day.date.isBefore(start!) || day.date.isAfter(end!)) {
//       isSelected = false;
//     }
//     if (isSelected) {
//       color = Color.lerp(Colors.white, Colors.purple, index / 30)!;
//       if (start.isAtTheSameDayAs(end)) {
// //Only one day selected
//         br = Border(
//             right: borderSide,
//             left: borderSide,
//             top: borderSide,
//             bottom: borderSide);
//       } else if (day.date.isAtTheSameDayAs(start)) {
// //First Selected Item
//         br = Border(left: borderSide, top: borderSide, bottom: borderSide);
//       } else if (day.date.isAtTheSameDayAs(end)) {
// //Last Selected Item
//         br = Border(right: borderSide, top: borderSide, bottom: borderSide);
//       } else {
// //Items in the middle
//         br = br = Border(top: borderSide, bottom: borderSide);
//       }
//     }

//     return Expanded(
//       child: Opacity(
//         opacity: day.hidden ? 0 : 1,
//         child: GestureDetector(
//           onTap: () {
//             if (!day.hidden) _controller.onDaySelect(day.date);
//           },
//           child: Container(
//               margin: EdgeInsets.symmetric(vertical: 4),
//               decoration: BoxDecoration(
//                 border: br,
//                 shape: BoxShape.rectangle,
//                 color: Color.lerp(color, Colors.transparent, 0.5),
//               ),
//               child: AspectRatio(
//                 aspectRatio: 1,
//                 child: Stack(
//                   children: <Widget>[
//                     Center(
//                       child: Text(
//                         day.date.day.toString(),
//                         style: TextStyle(fontSize: 20, color: Colors.white),
//                       ),
//                     ),
//                     // day.data == null
//                     //     ? Container()
//                     //     : Positioned(
//                     //         child: Icon(
//                     //           day.data.icon,
//                     //           color: day.data.color,
//                     //           size: 30,
//                     //         ),
//                     //         bottom: 0,
//                     //         right: 0,
//                     //       )
//                   ],
//                 ),
//               )),
//         ),
//       ),
//     );
//   }

// // Widget _dayItemBuilder(CustomDay day, int index) {
// //   return Expanded(
// //     child: Opacity(
// //       opacity: day.hidden ? 0 : 1,
// //       child: Container(
// //           margin: EdgeInsets.all(4),
// //           color: Color.lerp(Colors.white, Colors.transparent, 0.5),
// //           child: AspectRatio(
// //             aspectRatio: 1,
// //             child: Stack(
// //               children: <Widget>[
// //                 Center(
// //                   child: Text(
// //                     day.date.day.toString(),
// //                     style: TextStyle(fontSize: 20, color: black),
// //                   ),
// //                 ),
// //                 // day.data == null
// //                 //     ? Container()
// //                 //     : Positioned(
// //                 //         child: Icon(
// //                 //           day.data.icon,
// //                 //           color: day.data.color,
// //                 //           size: 30,
// //                 //         ),
// //                 //         bottom: 0,
// //                 //         right: 0,
// //                 //       )
// //               ],
// //             ),
// //           )),
// //     ),
// //   );
// // }

// CustomDatePickerController _controller = new CustomDatePickerController(
//   generateCustomDay: _generateDay,
//   start: DateTime.now().subtract(Duration(days: 31 * 3)),
//   end: DateTime.now().add(Duration(days: 31 * 3)),
// );

// CustomDay _generateDay(DateTime date) {
//   var random = new Random();
//   return CustomDay(date, Activity(random.nextInt(5)));
// }
// }

// class Activity {
//   IconData? icon;
//   Color? color;
//   Activity(int index) {
//     switch (index) {
//       case 0:
//         icon = Icons.directions_bike;
//         color = Colors.pinkAccent;
//         break;
//       case 1:
//         icon = Icons.style;
//         color = Colors.blue;
//         break;
//       case 2:
//         icon = Icons.filter_hdr;
//         color = Colors.green;
//         break;
//       case 3:
//         icon = Icons.beach_access;
//         color = Colors.yellow;
//         break;
//     }
//   }
// }
