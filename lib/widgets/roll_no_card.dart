import 'package:flutter/material.dart';
import 'package:seat_management/methods/globalMethods.dart';

class RollNoCard extends StatelessWidget {
  const RollNoCard({super.key});

  @override
  Widget build(BuildContext context) {
    var startNumber = "R22AT1EN0001";
    var endNumber = "R22AT1EN0128";

    var diff = GlobalMethods.getDifference(startNumber, endNumber);
    print("inside difference : ${diff}");

    return Column(
      children: [
        const Center(
          child: Card(
              child: Text(
            "data",
            style: TextStyle(color: Colors.black),
          )),
        ),
      ],
    );
  }
}
