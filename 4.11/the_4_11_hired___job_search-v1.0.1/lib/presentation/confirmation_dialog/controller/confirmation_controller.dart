import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/confirmation_dialog/models/confirmation_model.dart';

/// A controller class for the ConfirmationDialog.
///
/// This class manages the state of the ConfirmationDialog, including the
/// current confirmationModelObj
class ConfirmationController extends GetxController {
  Rx<ConfirmationModel> confirmationModelObj = ConfirmationModel().obs;
}
