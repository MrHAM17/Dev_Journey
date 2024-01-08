import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/terms_and_conditions_screen/models/terms_and_conditions_model.dart';

/// A controller class for the TermsAndConditionsScreen.
///
/// This class manages the state of the TermsAndConditionsScreen, including the
/// current termsAndConditionsModelObj
class TermsAndConditionsController extends GetxController {
  Rx<TermsAndConditionsModel> termsAndConditionsModelObj =
      TermsAndConditionsModel().obs;
}
