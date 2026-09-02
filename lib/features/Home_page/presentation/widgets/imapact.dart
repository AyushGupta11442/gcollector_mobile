import 'package:flutter/material.dart';

class Imapact extends StatelessWidget {
  final String wasteRecycled;
  final String co2Saved;
  final double treeSaved;
  final double containerHeight;
  final double containerWidth;


  const Imapact({
    required this.wasteRecycled,
    required this.co2Saved,
    required this.treeSaved,
    required this.containerHeight,
    required this.containerWidth,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: Color((0xffecfdf5)),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withAlpha(50),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                wasteRecycledContainer(wasteRecycled: wasteRecycled),
                co2SavedContainer(co2Saved: co2Saved),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Icon(Icons.nature, size: 16, color: Colors.green),
              Text(
                "You've saved the equivalent of$treeSaved trees this month!",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),


        ]
      ),
    );
  }
}


class wasteRecycledContainer extends StatelessWidget {
  final String wasteRecycled;

  const wasteRecycledContainer({
    required this.wasteRecycled,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              wasteRecycled,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text("Waste Recycled",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class co2SavedContainer extends StatelessWidget {
  final String co2Saved;

  const co2SavedContainer({
    required this.co2Saved,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              co2Saved,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text("Saved Tree",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}