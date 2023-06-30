import 'package:get/get.dart';
import 'package:seat_management/controller/room_controller.dart';

class RoomDetailsBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => RoomController());
  }
}
