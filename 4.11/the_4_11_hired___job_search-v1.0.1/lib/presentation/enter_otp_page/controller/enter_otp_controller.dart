import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/enter_otp_page/models/enter_otp_model.dart';

/// A controller class for the EnterOtpPage.
///
/// This class manages the state of the EnterOtpPage, including the
/// current enterOtpModelObj
class EnterOtpController extends GetxController {
  EnterOtpController(this.enterOtpModelObj);

  Rx<EnterOtpModel> enterOtpModelObj;
}
