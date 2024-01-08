import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/single_post_bottomsheet/models/single_post_model.dart';

/// A controller class for the SinglePostBottomsheet.
///
/// This class manages the state of the SinglePostBottomsheet, including the
/// current singlePostModelObj
class SinglePostController extends GetxController {
  Rx<SinglePostModel> singlePostModelObj = SinglePostModel().obs;
}
