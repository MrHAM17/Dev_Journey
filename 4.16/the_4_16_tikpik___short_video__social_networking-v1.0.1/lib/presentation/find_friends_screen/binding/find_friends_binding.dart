import '../controller/find_friends_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FindFriendsScreen.
///
/// This class ensures that the FindFriendsController is created when the
/// FindFriendsScreen is first loaded.
class FindFriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindFriendsController());
  }
}
