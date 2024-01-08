import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/apply_job_popup_dialog/models/apply_job_popup_model.dart';

/// A controller class for the ApplyJobPopupDialog.
///
/// This class manages the state of the ApplyJobPopupDialog, including the
/// current applyJobPopupModelObj
class ApplyJobPopupController extends GetxController {
  Rx<ApplyJobPopupModel> applyJobPopupModelObj = ApplyJobPopupModel().obs;
}
