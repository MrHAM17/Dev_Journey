import 'package:the_4_10_social___social_networking/core/app_export.dart';
import 'package:the_4_10_social___social_networking/presentation/invite_friends_screen/models/invite_friends_model.dart';

/// A controller class for the InviteFriendsScreen.
///
/// This class manages the state of the InviteFriendsScreen, including the
/// current inviteFriendsModelObj
class InviteFriendsController extends GetxController {
  Rx<InviteFriendsModel> inviteFriendsModelObj = InviteFriendsModel().obs;
}
