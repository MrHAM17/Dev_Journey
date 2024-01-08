import '../../../core/app_export.dart';
import 'stories1_item_model.dart';

/// This class defines the variables used in the [explore_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel {
  Rx<List<Stories1ItemModel>> stories1ItemList = Rx([
    Stories1ItemModel(
        home: "LOGO".obs,
        easyToUse: "Lorem Ipsum dolor set amet".obs,
        duration: "16 days ago".obs,
        time: "3 min read".obs)
  ]);
}
