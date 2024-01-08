import '../../../core/app_export.dart';
import 'discover_item_model.dart';

/// This class defines the variables used in the [discover_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscoverModel {
  Rx<List<DiscoverItemModel>> discoverItemList = Rx([
    DiscoverItemModel(shirtSleeve: ImageConstant.imgImage2.obs),
    DiscoverItemModel(shirtSleeve: ImageConstant.imgImage3.obs)
  ]);
}
