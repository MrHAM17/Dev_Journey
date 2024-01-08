import '../controller/manage_accounts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManageAccountsScreen.
///
/// This class ensures that the ManageAccountsController is created when the
/// ManageAccountsScreen is first loaded.
class ManageAccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageAccountsController());
  }
}
