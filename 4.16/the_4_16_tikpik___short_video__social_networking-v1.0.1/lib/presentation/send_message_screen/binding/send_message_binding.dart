import '../controller/send_message_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SendMessageScreen.
///
/// This class ensures that the SendMessageController is created when the
/// SendMessageScreen is first loaded.
class SendMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMessageController());
  }
}
