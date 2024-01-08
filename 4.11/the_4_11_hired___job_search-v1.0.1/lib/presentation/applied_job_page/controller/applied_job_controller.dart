import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/applied_job_page/models/applied_job_model.dart';

/// A controller class for the AppliedJobPage.
///
/// This class manages the state of the AppliedJobPage, including the
/// current appliedJobModelObj
class AppliedJobController extends GetxController {
  AppliedJobController(this.appliedJobModelObj);

  Rx<AppliedJobModel> appliedJobModelObj;
}
