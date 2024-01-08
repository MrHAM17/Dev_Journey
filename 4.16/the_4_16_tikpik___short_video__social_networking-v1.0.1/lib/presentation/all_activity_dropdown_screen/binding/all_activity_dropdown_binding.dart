import '../controller/all_activity_dropdown_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllActivityDropdownScreen.
///
/// This class ensures that the AllActivityDropdownController is created when the
/// AllActivityDropdownScreen is first loaded.
class AllActivityDropdownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllActivityDropdownController());
  }
}
