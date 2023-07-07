import 'package:cloud_firestore/cloud_firestore.dart';

import '../views/model/roomDetails_model.dart';

class FirebaseMethods {
  setClassDetails(
      String buildingNo, String classNo, RoomDetailModel classData) async {
    String res = 'no error';
    try {
      await FirebaseFirestore.instance
          .collection(buildingNo)
          .doc(classNo)
          .set({});
    } catch (e) {
      // print(e);
    }
  }
}
