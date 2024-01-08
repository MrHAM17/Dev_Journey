import '../controller/posts_quick_photo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsQuickPhotoScreen.
///
/// This class ensures that the PostsQuickPhotoController is created when the
/// PostsQuickPhotoScreen is first loaded.
class PostsQuickPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsQuickPhotoController());
  }
}
