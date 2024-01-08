import '../controller/posts_upload_media_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsUploadMediaTabContainerScreen.
///
/// This class ensures that the PostsUploadMediaTabContainerController is created when the
/// PostsUploadMediaTabContainerScreen is first loaded.
class PostsUploadMediaTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsUploadMediaTabContainerController());
  }
}
