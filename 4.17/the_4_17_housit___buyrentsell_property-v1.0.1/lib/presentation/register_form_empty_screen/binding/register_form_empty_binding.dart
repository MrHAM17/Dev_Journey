import '../controller/register_form_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterFormEmptyScreen.
///
/// This class ensures that the RegisterFormEmptyController is created when the
/// RegisterFormEmptyScreen is first loaded.
class RegisterFormEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFormEmptyController());
  }
}
