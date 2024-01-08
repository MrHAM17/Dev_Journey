import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'aladdin_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<FrameItemModel>> frameItemList = Rx([
    FrameItemModel(aladdin: ImageConstant.imgAladdin.obs),
    FrameItemModel(aladdin: ImageConstant.imgAladdin178x124.obs),
    FrameItemModel(aladdin: ImageConstant.imgAladdin1.obs)
  ]);

  Rx<List<AladdinItemModel>> aladdinItemList = Rx([
    AladdinItemModel(aladdin: ImageConstant.imgAladdin2.obs),
    AladdinItemModel(aladdin: ImageConstant.imgAladdin3.obs),
    AladdinItemModel(aladdin: ImageConstant.imgAladdin4.obs)
  ]);
}
