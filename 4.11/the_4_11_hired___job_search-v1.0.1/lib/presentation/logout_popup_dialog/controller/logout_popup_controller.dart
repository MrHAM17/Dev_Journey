import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/logout_popup_dialog/models/logout_popup_model.dart';

/// A controller class for the LogoutPopupDialog.
///
/// This class manages the state of the LogoutPopupDialog, including the
/// current logoutPopupModelObj
class LogoutPopupController extends GetxController {
  Rx<LogoutPopupModel> logoutPopupModelObj = LogoutPopupModel().obs;
}
