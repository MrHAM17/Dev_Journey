import '../controller/messages_box_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessagesBoxScreen.
///
/// This class ensures that the MessagesBoxController is created when the
/// MessagesBoxScreen is first loaded.
class MessagesBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesBoxController());
  }
}
