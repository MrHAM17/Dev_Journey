import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/saved_detail_job_page/models/saved_detail_job_model.dart';

/// A controller class for the SavedDetailJobPage.
///
/// This class manages the state of the SavedDetailJobPage, including the
/// current savedDetailJobModelObj
class SavedDetailJobController extends GetxController {
  SavedDetailJobController(this.savedDetailJobModelObj);

  Rx<SavedDetailJobModel> savedDetailJobModelObj;
}
