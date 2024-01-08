import '../controller/type_message_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TypeMessageScreen.
///
/// This class ensures that the TypeMessageController is created when the
/// TypeMessageScreen is first loaded.
class TypeMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TypeMessageController());
  }
}
