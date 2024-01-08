import '../controller/weekly_ranking_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WeeklyRankingTabContainerScreen.
///
/// This class ensures that the WeeklyRankingTabContainerController is created when the
/// WeeklyRankingTabContainerScreen is first loaded.
class WeeklyRankingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeeklyRankingTabContainerController());
  }
}
