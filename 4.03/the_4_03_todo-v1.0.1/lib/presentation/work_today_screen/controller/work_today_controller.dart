import 'package:the_4_03_todo/core/app_export.dart';
import 'package:the_4_03_todo/presentation/work_today_screen/models/work_today_model.dart';

/// A controller class for the WorkTodayScreen.
///
/// This class manages the state of the WorkTodayScreen, including the
/// current workTodayModelObj
class WorkTodayController extends GetxController {
  Rx<WorkTodayModel> workTodayModelObj = WorkTodayModel().obs;
}
