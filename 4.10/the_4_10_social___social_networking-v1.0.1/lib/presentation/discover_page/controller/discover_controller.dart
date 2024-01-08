import 'package:the_4_10_social___social_networking/core/app_export.dart';
import 'package:the_4_10_social___social_networking/presentation/discover_page/models/discover_model.dart';

/// A controller class for the DiscoverPage.
///
/// This class manages the state of the DiscoverPage, including the
/// current discoverModelObj
class DiscoverController extends GetxController {
  DiscoverController(this.discoverModelObj);

  Rx<DiscoverModel> discoverModelObj;
}
