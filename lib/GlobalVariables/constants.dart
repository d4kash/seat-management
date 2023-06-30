import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

double height = Get.size.height;
double width = Get.size.width;

var userCollection = FirebaseFirestore.instance.collection("Rooms");
