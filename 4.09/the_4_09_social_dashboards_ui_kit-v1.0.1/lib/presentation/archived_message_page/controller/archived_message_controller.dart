import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/archived_message_page/models/archived_message_model.dart';

/// A controller class for the ArchivedMessagePage.
///
/// This class manages the state of the ArchivedMessagePage, including the
/// current archivedMessageModelObj
class ArchivedMessageController extends GetxController {
  ArchivedMessageController(this.archivedMessageModelObj);

  Rx<ArchivedMessageModel> archivedMessageModelObj;
}
