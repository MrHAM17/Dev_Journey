import 'widget1_item_model.dart';
import '../../../core/app_export.dart';
import 'frame1_item_model.dart';
import 'frame2_item_model.dart';

/// This class defines the variables used in the [home_recently_watched_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeRecentlyWatchedModel {
  Rx<List<Widget1ItemModel>> widget1ItemList =
      Rx(List.generate(1, (index) => Widget1ItemModel()));

  Rx<List<Frame1ItemModel>> frame1ItemList = Rx([
    Frame1ItemModel(
        image: ImageConstant.imgRectangle6.obs,
        doctorStrange: "Doctor strange :  In The Multiverse of Madness".obs,
        fifteenThousandThirtyFive: "1:50:35".obs,
        zipcode: "2021".obs,
        lightBulb: ImageConstant.imgRectangle9.obs),
    Frame1ItemModel(
        image: ImageConstant.imgRectangle686x214.obs,
        doctorStrange: "Thor: Ragnarok".obs,
        fifteenThousandThirtyFive: "1:50:35".obs,
        zipcode: "2021".obs)
  ]);

  Rx<List<Frame2ItemModel>> frame2ItemList = Rx([
    Frame2ItemModel(aladdin: ImageConstant.imgAladdin.obs),
    Frame2ItemModel(aladdin: ImageConstant.imgAladdin178x124.obs),
    Frame2ItemModel(aladdin: ImageConstant.imgAladdin1.obs)
  ]);
}
