import '../controller/posts_templates_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostsTemplatesScreen.
///
/// This class ensures that the PostsTemplatesController is created when the
/// PostsTemplatesScreen is first loaded.
class PostsTemplatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsTemplatesController());
  }
}
