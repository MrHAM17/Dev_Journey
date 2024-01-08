import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/presentation/message_history_page/models/message_history_model.dart';

/// A controller class for the MessageHistoryPage.
///
/// This class manages the state of the MessageHistoryPage, including the
/// current messageHistoryModelObj
class MessageHistoryController extends GetxController {
  MessageHistoryController(this.messageHistoryModelObj);

  Rx<MessageHistoryModel> messageHistoryModelObj;
}
