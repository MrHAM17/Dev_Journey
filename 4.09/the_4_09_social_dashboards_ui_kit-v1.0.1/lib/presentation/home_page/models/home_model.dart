import '../../../core/app_export.dart';
import 'sixtyseven_item_model.dart';
import 'eightytwo_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<SixtysevenItemModel>> sixtysevenItemList =
      Rx([SixtysevenItemModel(close: ImageConstant.imgClose.obs)]);

  Rx<List<EightytwoItemModel>> eightytwoItemList = Rx([
    EightytwoItemModel(
        name: "Dustin Houston".obs,
        time: "5 min ago".obs,
        copy: "Whether its a driving tour 😂".obs,
        label: "326".obs,
        label1: "148".obs,
        label2: "Share".obs),
    EightytwoItemModel(copy: "Whether its a driving tour 😂".obs)
  ]);
}
