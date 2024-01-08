import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/new_post_bottomsheet/models/new_post_model.dart';

/// A controller class for the NewPostBottomsheet.
///
/// This class manages the state of the NewPostBottomsheet, including the
/// current newPostModelObj
class NewPostController extends GetxController {
  Rx<NewPostModel> newPostModelObj = NewPostModel().obs;
}
