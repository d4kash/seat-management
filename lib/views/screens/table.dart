import 'package:flutter/material.dart';
import 'package:seat_management/widgets/roll_no_card.dart';

class Table extends StatelessWidget {
  const Table({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const RollNoCard(),
        ),
      ],
    );
  }
}
