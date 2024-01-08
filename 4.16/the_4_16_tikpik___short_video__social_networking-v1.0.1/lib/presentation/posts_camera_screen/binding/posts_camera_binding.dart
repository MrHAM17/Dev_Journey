import '../controller/posts_camera_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsCameraScreen.
///
/// This class ensures that the PostsCameraController is created when the
/// PostsCameraScreen is first loaded.
class PostsCameraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsCameraController());
  }
}
