import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/menu_screen/models/menu_model.dart';

/// A controller class for the MenuScreen.
///
/// This class manages the state of the MenuScreen, including the
/// current menuModelObj
class MenuController extends GetxController {
  Rx<MenuModel> menuModelObj = MenuModel().obs;
}
