import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/popular_items_screen/models/popular_items_model.dart';

/// A controller class for the PopularItemsScreen.
///
/// This class manages the state of the PopularItemsScreen, including the
/// current popularItemsModelObj
class PopularItemsController extends GetxController {
  Rx<PopularItemsModel> popularItemsModelObj = PopularItemsModel().obs;
}
