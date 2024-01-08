import '../../../core/app_export.dart';
import 'myorder_item_model.dart';

/// This class defines the variables used in the [my_order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrderModel {
  Rx<List<MyorderItemModel>> myorderItemList = Rx([
    MyorderItemModel(
        x: ImageConstant.imgRectangle9237x175.obs,
        vERTLUNEBoyfriend: "VERTLUNE\nBoyfriend Tee".obs,
        yellowSizeCounter: "Yellow\nSize 8".obs),
    MyorderItemModel(
        x: ImageConstant.imgRectangle10.obs,
        vERTLUNEBoyfriend: "VERTLUNE\nBoyfriend Tee".obs,
        yellowSizeCounter: "Yellow\nSize 8".obs)
  ]);
}
