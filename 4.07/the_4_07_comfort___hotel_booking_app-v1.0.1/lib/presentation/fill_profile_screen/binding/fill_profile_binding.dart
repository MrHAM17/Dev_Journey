import '../controller/fill_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FillProfileScreen.
///
/// This class ensures that the FillProfileController is created when the
/// FillProfileScreen is first loaded.
class FillProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FillProfileController());
  }
}
