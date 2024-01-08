import '../controller/edit_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditFormScreen.
///
/// This class ensures that the EditFormController is created when the
/// EditFormScreen is first loaded.
class EditFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditFormController());
  }
}
