import '../controller/choose_your_interest_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseYourInterestScreen.
///
/// This class ensures that the ChooseYourInterestController is created when the
/// ChooseYourInterestScreen is first loaded.
class ChooseYourInterestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseYourInterestController());
  }
}
