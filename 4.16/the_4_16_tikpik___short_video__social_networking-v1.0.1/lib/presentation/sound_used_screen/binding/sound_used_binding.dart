import '../controller/sound_used_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SoundUsedScreen.
///
/// This class ensures that the SoundUsedController is created when the
/// SoundUsedScreen is first loaded.
class SoundUsedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SoundUsedController());
  }
}
