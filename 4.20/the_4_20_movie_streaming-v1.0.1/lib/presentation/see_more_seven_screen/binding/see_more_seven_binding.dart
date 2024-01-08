import '../controller/see_more_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SeeMoreSevenScreen.
///
/// This class ensures that the SeeMoreSevenController is created when the
/// SeeMoreSevenScreen is first loaded.
class SeeMoreSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreSevenController());
  }
}
