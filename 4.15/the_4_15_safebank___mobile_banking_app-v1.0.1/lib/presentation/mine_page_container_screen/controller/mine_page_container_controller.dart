import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/mine_page_container_screen/models/mine_page_container_model.dart';

/// A controller class for the MinePageContainerScreen.
///
/// This class manages the state of the MinePageContainerScreen, including the
/// current minePageContainerModelObj
class MinePageContainerController extends GetxController {
  Rx<MinePageContainerModel> minePageContainerModelObj =
      MinePageContainerModel().obs;
}
