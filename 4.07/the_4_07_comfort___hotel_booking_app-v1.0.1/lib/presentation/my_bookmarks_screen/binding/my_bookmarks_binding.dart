import '../controller/my_bookmarks_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyBookmarksScreen.
///
/// This class ensures that the MyBookmarksController is created when the
/// MyBookmarksScreen is first loaded.
class MyBookmarksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBookmarksController());
  }
}
