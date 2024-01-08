import '../controller/when_is_your_birthday_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhenIsYourBirthdayScreen.
///
/// This class ensures that the WhenIsYourBirthdayController is created when the
/// WhenIsYourBirthdayScreen is first loaded.
class WhenIsYourBirthdayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhenIsYourBirthdayController());
  }
}
