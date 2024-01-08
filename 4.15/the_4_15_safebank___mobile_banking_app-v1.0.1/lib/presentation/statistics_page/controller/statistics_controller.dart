import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/statistics_page/models/statistics_model.dart';

/// A controller class for the StatisticsPage.
///
/// This class manages the state of the StatisticsPage, including the
/// current statisticsModelObj
class StatisticsController extends GetxController {
  StatisticsController(this.statisticsModelObj);

  Rx<StatisticsModel> statisticsModelObj;
}
