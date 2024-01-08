import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/menu_draweritem/models/menu_model.dart';

/// A controller class for the MenuDraweritem.
///
/// This class manages the state of the MenuDraweritem, including the
/// current menuModelObj
class MenuController extends GetxController {
  Rx<MenuModel> menuModelObj = MenuModel().obs;
}
