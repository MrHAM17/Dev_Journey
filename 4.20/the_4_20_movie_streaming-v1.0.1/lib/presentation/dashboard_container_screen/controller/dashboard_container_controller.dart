import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/presentation/dashboard_container_screen/models/dashboard_container_model.dart';

/// A controller class for the DashboardContainerScreen.
///
/// This class manages the state of the DashboardContainerScreen, including the
/// current dashboardContainerModelObj
class DashboardContainerController extends GetxController {
  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.dashboardPage,
    );
    Get.toNamed(
      AppRoutes.accountFivePage,
    );
    Get.toNamed(
      AppRoutes.channelSixPage,
    );
    Get.toNamed(
      AppRoutes.exploreEightPage,
    );
  }
}
