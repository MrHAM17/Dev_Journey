import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/discover_screen/models/discover_model.dart';

/// A controller class for the DiscoverScreen.
///
/// This class manages the state of the DiscoverScreen, including the
/// current discoverModelObj
class DiscoverController extends GetxController {
  Rx<DiscoverModel> discoverModelObj = DiscoverModel().obs;
}
