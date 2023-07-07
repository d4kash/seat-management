// To parse this JSON data, do
//
//     final roomDetailModel = roomDetailModelFromJson(jsonString);

import 'dart:convert';

RoomDetailModel roomDetailModelFromJson(String str) =>
    RoomDetailModel.fromJson(json.decode(str));
RoomDetailModel roomDetailModelDocFromJson(var str) =>
    RoomDetailModel.fromJson(str);

String roomDetailModelToJson(RoomDetailModel data) =>
    json.encode(data.toJson());

class RoomDetailModel {
  String buildingNo;
  String roomNo;
  String leftSideBench;
  String sPBenchLeft;
  String middleSideBench;
  String sPBenchMiddle;
  String rightSideBench;
  String sPBenchRight;
  String noOfSubRoom;

  RoomDetailModel({
    required this.buildingNo,
    required this.roomNo,
    required this.leftSideBench,
    required this.sPBenchLeft,
    required this.middleSideBench,
    required this.sPBenchMiddle,
    required this.rightSideBench,
    required this.sPBenchRight,
    required this.noOfSubRoom,
  });

  factory RoomDetailModel.fromJson(Map<String, dynamic> json) =>
      RoomDetailModel(
        buildingNo: json["building_no"],
        roomNo: json["room_no"],
        leftSideBench: json["left_side_bench"],
        sPBenchLeft: json["sPBenchLeft"],
        middleSideBench: json["middle_side_bench"],
        sPBenchMiddle: json["sPBenchMiddle"],
        rightSideBench: json["right_side_bench"],
        sPBenchRight: json["sPBenchRight"],
        noOfSubRoom: json["noOfSub_room"],
      );

  Map<String, dynamic> toJson() => {
        "building_no": buildingNo,
        "room_no": roomNo,
        "left_side_bench": leftSideBench,
        "sPBenchLeft": sPBenchLeft,
        "middle_side_bench": middleSideBench,
        "sPBenchMiddle": sPBenchMiddle,
        "right_side_bench": rightSideBench,
        "sPBenchRight": sPBenchRight,
        "noOfSub_room": noOfSubRoom,
      };
}
