import 'package:flutter/material.dart';
import 'package:seat_management/GlobalVariables/constants.dart';
import 'package:seat_management/widgets/text_widget.dart';

class ArrangeSeat extends StatelessWidget {
  ArrangeSeat({super.key});
  final sessionController = TextEditingController();
  final examController = TextEditingController();
  final semController = TextEditingController();
  final roomNoController = TextEditingController();
  final sub1Controller = TextEditingController();
  final sub2Controller = TextEditingController();
  final sub1RollController = TextEditingController();
  final sub1EndRollController = TextEditingController();
  final sub2RollController = TextEditingController();
  final sub2EndRollController = TextEditingController();
  final shiftController = TextEditingController();
  final dateController = TextEditingController();
  final buildingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> fieldData = [
      {
        "fieldLabel": "Session :",
        "controller": sessionController,
      },
      {
        "fieldLabel": "Exam Name :",
        "controller": examController,
      },
      {
        "fieldLabel": "Semester :",
        "controller": semController,
      },
      {
        "fieldLabel": "Select Room :",
        "controller": roomNoController,
      },
      {
        "fieldLabel": "Subject 1st :",
        "controller": sub1Controller,
      },
      {
        "fieldLabel": "Subject 2nd :",
        "controller": sub2Controller,
      },
      {
        "fieldLabel": "Sub 1 Start Roll :",
        "controller": sub1RollController,
      },
    ];
    List<Map<String, dynamic>> fieldDataRight = [
      {
        "fieldLabel": "Sub 1 End Roll :",
        "controller": sub1EndRollController,
      },
      {
        "fieldLabel": "Sub 2 Start Roll :",
        "controller": sub2RollController,
      },
      {
        "fieldLabel": "Sub 2 End Roll :",
        "controller": sub2EndRollController,
      },
      {
        "fieldLabel": "Exam Shift :",
        "controller": shiftController,
      },
      {
        "fieldLabel": "Exam Date :",
        "controller": dateController,
      },
      {
        "fieldLabel": "Building No :",
        "controller": buildingController,
      },
    ];
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Dashboard",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 15),
            child: Card(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height / 1.3,
                          width: width / 3,
                          child: Card(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: fieldData.length,
                                itemBuilder: (context, index) {
                                  return CustomText(
                                    controller: fieldData[index]['controller'],
                                    fieldLabel: fieldData[index]['fieldLabel'],
                                  );
                                }),
                          ),
                        ),
                        SizedBox(
                          height: height / 1.3,
                          width: width / 3,
                          child: Card(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: fieldDataRight.length,
                                itemBuilder: (context, index) {
                                  return CustomText(
                                    controller: fieldDataRight[index]
                                        ['controller'],
                                    fieldLabel: fieldDataRight[index]
                                        ['fieldLabel'],
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(250, 50)),
                      child: const Text("Next"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
