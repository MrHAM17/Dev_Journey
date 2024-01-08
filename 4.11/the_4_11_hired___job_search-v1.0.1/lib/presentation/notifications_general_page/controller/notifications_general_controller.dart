import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/notifications_general_page/models/notifications_general_model.dart';

/// A controller class for the NotificationsGeneralPage.
///
/// This class manages the state of the NotificationsGeneralPage, including the
/// current notificationsGeneralModelObj
class NotificationsGeneralController extends GetxController {
  NotificationsGeneralController(this.notificationsGeneralModelObj);

  Rx<NotificationsGeneralModel> notificationsGeneralModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
