import '../controller/home_alarm_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeAlarmContainerScreen.
///
/// This class ensures that the HomeAlarmContainerController is created when the
/// HomeAlarmContainerScreen is first loaded.
class HomeAlarmContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeAlarmContainerController());
  }
}
