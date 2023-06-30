import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seat_management/GlobalVariables/constants.dart';
import 'package:seat_management/controller/room_controller.dart';
import 'package:seat_management/views/model/roomDetails_model.dart';
import 'package:seat_management/widgets/text_widget.dart';

class RoomDetails extends GetView<RoomController> {
  RoomDetails({super.key});
  // final buildingController = TextEditingController(),
  //     roomController = TextEditingController(),
  //     leftBench = TextEditingController(),
  //     rightBench = TextEditingController(),
  //     studLeftBench = TextEditingController(),
  //     middleBench = TextEditingController(),
  //     studMiddleBench = TextEditingController(),
  //     studRightBench = TextEditingController(),
  //     studentsPerBench = TextEditingController(),
  //     subjectPerRoom = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final roomContrl = Get.find<RoomController>();
    List<Map<String, dynamic>> fieldData = [
      {
        "fieldLabel": "Building no :",
        "controller": controller.buildingController,
      },
      {
        "fieldLabel": "Room no :",
        "controller": controller.roomController,
      },
      {
        "fieldLabel": "Left Side Bench :",
        "controller": controller.leftBench,
      },
      {
        "fieldLabel": "Stud/Bench Left :",
        "controller": controller.studLeftBench,
      },
      {
        "fieldLabel": "In Middle Bench :",
        "controller": controller.middleBench,
      },
      {
        "fieldLabel": "Stud/Bench Middle :",
        "controller": controller.studMiddleBench,
      },
    ];
    List<Map<String, dynamic>> fieldDataRight = [
      {
        "fieldLabel": "Right Side Bench :",
        "controller": controller.rightBench,
      },
      {
        "fieldLabel": "Stud/Bench Right :",
        "controller": controller.studRightBench,
      },
      {
        "fieldLabel": "Sub/Room :",
        "controller": controller.subjectPerRoom,
      }
    ];
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Create Room",
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
                      onPressed: () {
                        RoomDetailModel data = RoomDetailModel(
                            buildingNo:
                                controller.buildingController.text.trim(),
                            roomNo: controller.roomController.text.trim(),
                            leftSideBench: controller.leftBench.text.trim(),
                            middleSideBench: controller.middleBench.text.trim(),
                            noOfSubRoom: controller.subjectPerRoom.text.trim(),
                            rightSideBench: controller.rightBench.text.trim(),
                            sPBenchLeft: controller.studLeftBench.text.trim(),
                            sPBenchMiddle:
                                controller.studMiddleBench.text.trim(),
                            sPBenchRight:
                                controller.studRightBench.text.trim());

                        controller.setRoomDetails(
                            controller.roomController.text.trim(), data);
                      },
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
