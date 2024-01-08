import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'aladdin_item_model.dart';

class HomeModel {
  List<FrameItemModel> frameItemList = [
    FrameItemModel(aladdin: ImageConstant.imgAladdin),
    FrameItemModel(aladdin: ImageConstant.imgAladdin178x124),
    FrameItemModel(aladdin: ImageConstant.imgAladdin1)
  ];

  List<AladdinItemModel> aladdinItemList = [
    AladdinItemModel(aladdin: ImageConstant.imgAladdin2),
    AladdinItemModel(aladdin: ImageConstant.imgAladdin3),
    AladdinItemModel(aladdin: ImageConstant.imgAladdin4)
  ];
}
