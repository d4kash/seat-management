import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seat_management/GlobalVariables/constants.dart';
import 'package:seat_management/views/model/roomDetails_model.dart';

class RoomController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  final buildingController = TextEditingController(),
      roomController = TextEditingController(),
      leftBench = TextEditingController(),
      rightBench = TextEditingController(),
      studLeftBench = TextEditingController(),
      middleBench = TextEditingController(),
      studMiddleBench = TextEditingController(),
      studRightBench = TextEditingController(),
      studentsPerBench = TextEditingController(),
      subjectPerRoom = TextEditingController();
  setRoomDetails(String roomNo, RoomDetailModel modelData) async {
    var encodedData = modelData.toJson();
    try {
      await userCollection
          .doc(roomNo)
          .set(encodedData)
          .then((value) => debugPrint("room added"));
    } on FirebaseFirestore catch (e) {
      print(e);
    }
  }

  Future getRoomDetails(
    String roomNo,
  ) async {
    // RoomDetailModel? modelData;
    var data;
    try {
      await userCollection.doc(roomNo).get().then((value) {
        data = roomDetailModelDocFromJson(value.data() as Map<String, dynamic>);
      });
      return data;
    } on FirebaseFirestore catch (e) {
      print(e);
    }
  }
}
