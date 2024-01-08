import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_4_21_vertex___real_estate_app/presentation/home_listing_draw_screen/models/home_listing_draw_model.dart';

/// A controller class for the HomeListingDrawScreen.
///
/// This class manages the state of the HomeListingDrawScreen, including the
/// current homeListingDrawModelObj
class HomeListingDrawController extends GetxController {
  Rx<HomeListingDrawModel> homeListingDrawModelObj = HomeListingDrawModel().obs;
}
