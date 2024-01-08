import '../controller/posts_add_effects_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsAddEffectsTabContainerScreen.
///
/// This class ensures that the PostsAddEffectsTabContainerController is created when the
/// PostsAddEffectsTabContainerScreen is first loaded.
class PostsAddEffectsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsAddEffectsTabContainerController());
  }
}
