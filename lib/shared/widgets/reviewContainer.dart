import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewContainer extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;

  final double initialRating;
  final double numberOfReviews;

  final String? reviewText;
  final String? reviewSubtext;

  const ReviewContainer({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.initialRating,
    required this.numberOfReviews,
    this.reviewText,
    this.reviewSubtext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
      child: Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              initialRating: initialRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print("Rating: $rating");
              },
            ),
      
            if (reviewText != null)
              Text(
                reviewText!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
      
            if (reviewSubtext != null)
              Text(reviewSubtext!),
          ],
        ),
      ),
    );
  }
}