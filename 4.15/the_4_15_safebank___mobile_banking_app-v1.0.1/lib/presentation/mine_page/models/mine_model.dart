import '../../../core/app_export.dart';
import 'thirtytwo_item_model.dart';
import 'fifteen_item_model.dart';

/// This class defines the variables used in the [mine_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MineModel {
  Rx<List<ThirtytwoItemModel>> thirtytwoItemList =
      Rx([ThirtytwoItemModel(frame: ImageConstant.imgFrame2261.obs)]);

  Rx<List<FifteenItemModel>> fifteenItemList = Rx([
    FifteenItemModel(
        vector: ImageConstant.imgVector.obs,
        appleStore: "Apple Store".obs,
        june: "21 June, 2022".obs,
        price: "-220.00".obs),
    FifteenItemModel(
        vector: ImageConstant.imgThumbsUp.obs,
        appleStore: "Netflix".obs,
        june: "20 June, 2022".obs,
        price: "-170.00".obs),
    FifteenItemModel(
        vector: ImageConstant.imgIcon50x50.obs,
        appleStore: "Spotify".obs,
        june: "20 June, 2022".obs,
        price: "-54.00".obs),
    FifteenItemModel(
        vector: ImageConstant.imgVectorPink400.obs,
        appleStore: "Dribbble".obs,
        june: "18 June, 2022".obs,
        price: "-107.00".obs)
  ]);
}
