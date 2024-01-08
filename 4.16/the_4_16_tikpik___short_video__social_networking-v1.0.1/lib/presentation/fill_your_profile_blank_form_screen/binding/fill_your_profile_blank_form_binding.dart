import '../controller/fill_your_profile_blank_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FillYourProfileBlankFormScreen.
///
/// This class ensures that the FillYourProfileBlankFormController is created when the
/// FillYourProfileBlankFormScreen is first loaded.
class FillYourProfileBlankFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FillYourProfileBlankFormController());
  }
}
