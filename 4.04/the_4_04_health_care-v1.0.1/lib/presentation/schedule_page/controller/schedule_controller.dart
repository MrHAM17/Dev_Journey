import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/presentation/schedule_page/models/schedule_model.dart';

/// A controller class for the SchedulePage.
///
/// This class manages the state of the SchedulePage, including the
/// current scheduleModelObj
class ScheduleController extends GetxController {
  ScheduleController(this.scheduleModelObj);

  Rx<ScheduleModel> scheduleModelObj;
}
