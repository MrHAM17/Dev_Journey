import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/video_chat_screen/models/video_chat_model.dart';

/// A controller class for the VideoChatScreen.
///
/// This class manages the state of the VideoChatScreen, including the
/// current videoChatModelObj
class VideoChatController extends GetxController {
  Rx<VideoChatModel> videoChatModelObj = VideoChatModel().obs;
}
