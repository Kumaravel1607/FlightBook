import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  //double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return
        // implement the rating bar
        SizedBox(
      height: 50,
      child: RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => Icon(
                Icons.star,
                size: 10,
                color: Colors.amber,
              ),
          onRatingUpdate: (rating) {
            // print(rating);
          }),
    );
  }
}
