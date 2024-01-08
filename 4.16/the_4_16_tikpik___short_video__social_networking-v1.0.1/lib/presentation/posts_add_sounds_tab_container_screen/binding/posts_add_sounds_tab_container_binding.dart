import '../controller/posts_add_sounds_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsAddSoundsTabContainerScreen.
///
/// This class ensures that the PostsAddSoundsTabContainerController is created when the
/// PostsAddSoundsTabContainerScreen is first loaded.
class PostsAddSoundsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsAddSoundsTabContainerController());
  }
}
