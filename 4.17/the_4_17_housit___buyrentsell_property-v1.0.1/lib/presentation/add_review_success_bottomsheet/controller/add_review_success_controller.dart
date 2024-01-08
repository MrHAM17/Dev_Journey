import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/presentation/add_review_success_bottomsheet/models/add_review_success_model.dart';

/// A controller class for the AddReviewSuccessBottomsheet.
///
/// This class manages the state of the AddReviewSuccessBottomsheet, including the
/// current addReviewSuccessModelObj
class AddReviewSuccessController extends GetxController {
  Rx<AddReviewSuccessModel> addReviewSuccessModelObj =
      AddReviewSuccessModel().obs;
}
