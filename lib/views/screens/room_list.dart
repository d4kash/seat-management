import 'package:flutter/material.dart';
import 'package:seat_management/GlobalVariables/constants.dart';

class ClassList extends StatelessWidget {
  const ClassList({super.key});

  @override
  Widget build(BuildContext context) {
    List classList = [
      "Room no 1",
      "Room no 2",
      "Room no 3",
      "Room no 4",
      "Room no 5",
      "Room no 6",
      "Room no 7",
      "Room no 8",
      "Room no 9",
    ];
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Rooms List",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
        ),
        Expanded(
          child: Card(
            child: SizedBox(
              height: height / 1.3,
              width: width / 3,
              child: ListView.builder(
                  itemCount: classList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.class_outlined),
                      title: Text(classList[index]),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_circle_right_outlined)),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
