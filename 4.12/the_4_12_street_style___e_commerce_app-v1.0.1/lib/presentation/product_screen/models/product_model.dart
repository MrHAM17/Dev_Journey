import '../../../core/app_export.dart';
import 'twelve_item_model.dart';

/// This class defines the variables used in the [product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductModel {
  Rx<List<TwelveItemModel>> twelveItemList = Rx([
    TwelveItemModel(image: ImageConstant.imgRectangle14.obs),
    TwelveItemModel(image: ImageConstant.imgRectangle14.obs)
  ]);
}
