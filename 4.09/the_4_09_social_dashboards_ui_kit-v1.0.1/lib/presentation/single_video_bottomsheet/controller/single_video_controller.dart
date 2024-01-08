import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/single_video_bottomsheet/models/single_video_model.dart';

/// A controller class for the SingleVideoBottomsheet.
///
/// This class manages the state of the SingleVideoBottomsheet, including the
/// current singleVideoModelObj
class SingleVideoController extends GetxController {
  Rx<SingleVideoModel> singleVideoModelObj = SingleVideoModel().obs;
}
