import 'package:geek_garden/controllers/edit_controller.dart';
import 'package:get/get.dart';

class EditBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditController());
  }
}
