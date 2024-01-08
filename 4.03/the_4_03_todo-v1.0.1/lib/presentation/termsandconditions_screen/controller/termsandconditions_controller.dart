import 'package:the_4_03_todo/core/app_export.dart';
import 'package:the_4_03_todo/presentation/termsandconditions_screen/models/termsandconditions_model.dart';

/// A controller class for the TermsandconditionsScreen.
///
/// This class manages the state of the TermsandconditionsScreen, including the
/// current termsandconditionsModelObj
class TermsandconditionsController extends GetxController {
  Rx<TermsandconditionsModel> termsandconditionsModelObj =
      TermsandconditionsModel().obs;
}
