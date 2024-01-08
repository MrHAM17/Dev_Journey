import 'widget1_item_model.dart';
import '../../../core/app_export.dart';
import 'frame1_item_model.dart';
import 'frame2_item_model.dart';

class HomeRecentlyWatchedModel {
  List<Widget1ItemModel> widget1ItemList =
      List.generate(1, (index) => Widget1ItemModel());

  List<Frame1ItemModel> frame1ItemList = [
    Frame1ItemModel(
        image: ImageConstant.imgRectangle6,
        doctorStrange: "Doctor strange :  In The Multiverse of Madness",
        fifteenThousandThirtyFive: "1:50:35",
        zipcode: "2021",
        lightBulb: ImageConstant.imgRectangle9),
    Frame1ItemModel(
        image: ImageConstant.imgRectangle686x214,
        doctorStrange: "Thor: Ragnarok",
        fifteenThousandThirtyFive: "1:50:35",
        zipcode: "2021")
  ];

  List<Frame2ItemModel> frame2ItemList = [
    Frame2ItemModel(aladdin: ImageConstant.imgAladdin),
    Frame2ItemModel(aladdin: ImageConstant.imgAladdin178x124),
    Frame2ItemModel(aladdin: ImageConstant.imgAladdin1)
  ];
}
