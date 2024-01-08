import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/mine_page/models/mine_model.dart';

/// A controller class for the MinePage.
///
/// This class manages the state of the MinePage, including the
/// current mineModelObj
class MineController extends GetxController {
  MineController(this.mineModelObj);

  Rx<MineModel> mineModelObj;
}
