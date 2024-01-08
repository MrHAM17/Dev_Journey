import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/group_chat_bottomsheet/models/group_chat_model.dart';

/// A controller class for the GroupChatBottomsheet.
///
/// This class manages the state of the GroupChatBottomsheet, including the
/// current groupChatModelObj
class GroupChatController extends GetxController {
  Rx<GroupChatModel> groupChatModelObj = GroupChatModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.videoChatScreen,
    );
  }
}
