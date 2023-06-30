import 'package:flutter/material.dart';
import 'package:seat_management/GlobalVariables/constants.dart';

class CustomText extends StatelessWidget {
  final TextEditingController controller;
  final String fieldLabel;
  const CustomText(
      {super.key, required this.controller, required this.fieldLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        child: Row(
          children: [
            SizedBox(
              width: 90,
              child: FittedBox(
                  child: Text(fieldLabel, style: TextStyle(fontSize: 18))),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: width / 4.5,
              height: height / 15,
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                    labelText: 'Enter ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.yellow),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
