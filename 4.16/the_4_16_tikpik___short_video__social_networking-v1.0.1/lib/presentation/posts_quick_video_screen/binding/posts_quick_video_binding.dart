import '../controller/posts_quick_video_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsQuickVideoScreen.
///
/// This class ensures that the PostsQuickVideoController is created when the
/// PostsQuickVideoScreen is first loaded.
class PostsQuickVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsQuickVideoController());
  }
}
