import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/reset_password_successful_dialog/models/reset_password_successful_model.dart';

/// A controller class for the ResetPasswordSuccessfulDialog.
///
/// This class manages the state of the ResetPasswordSuccessfulDialog, including the
/// current resetPasswordSuccessfulModelObj
class ResetPasswordSuccessfulController extends GetxController {
  Rx<ResetPasswordSuccessfulModel> resetPasswordSuccessfulModelObj =
      ResetPasswordSuccessfulModel().obs;
}
