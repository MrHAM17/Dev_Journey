import '../controller/posts_edit_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsEditPageScreen.
///
/// This class ensures that the PostsEditPageController is created when the
/// PostsEditPageScreen is first loaded.
class PostsEditPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsEditPageController());
  }
}
