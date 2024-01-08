import '../controller/add_option_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddOptionScreen.
///
/// This class ensures that the AddOptionController is created when the
/// AddOptionScreen is first loaded.
class AddOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddOptionController());
  }
}
