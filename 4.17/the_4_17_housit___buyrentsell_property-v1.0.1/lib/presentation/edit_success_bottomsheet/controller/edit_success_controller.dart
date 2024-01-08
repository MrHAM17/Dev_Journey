import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/presentation/edit_success_bottomsheet/models/edit_success_model.dart';

/// A controller class for the EditSuccessBottomsheet.
///
/// This class manages the state of the EditSuccessBottomsheet, including the
/// current editSuccessModelObj
class EditSuccessController extends GetxController {
  Rx<EditSuccessModel> editSuccessModelObj = EditSuccessModel().obs;
}
