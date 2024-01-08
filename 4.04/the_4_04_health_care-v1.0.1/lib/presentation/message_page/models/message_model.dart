import '../../../core/app_export.dart';
import 'chat_item_model.dart';

/// This class defines the variables used in the [message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel {
  Rx<List<ChatItemModel>> chatItemList = Rx([
    ChatItemModel(
        drMarcusHorizon: ImageConstant.imgProfileThumbnail.obs,
        drMarcusHorizon1: "Dr. Marcus Horizon".obs,
        iDonTHaveAny: "I don,t have any fever, but headchace...".obs,
        time: "10.24".obs)
  ]);
}
