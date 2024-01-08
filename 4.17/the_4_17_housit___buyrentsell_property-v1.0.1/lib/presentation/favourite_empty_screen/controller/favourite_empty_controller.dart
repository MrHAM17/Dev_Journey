import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/presentation/favourite_empty_screen/models/favourite_empty_model.dart';

/// A controller class for the FavouriteEmptyScreen.
///
/// This class manages the state of the FavouriteEmptyScreen, including the
/// current favouriteEmptyModelObj
class FavouriteEmptyController extends GetxController {
  Rx<FavouriteEmptyModel> favouriteEmptyModelObj = FavouriteEmptyModel().obs;
}
