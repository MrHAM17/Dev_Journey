import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/account_setup_successful_dialog/models/account_setup_successful_model.dart';

/// A controller class for the AccountSetupSuccessfulDialog.
///
/// This class manages the state of the AccountSetupSuccessfulDialog, including the
/// current accountSetupSuccessfulModelObj
class AccountSetupSuccessfulController extends GetxController {
  Rx<AccountSetupSuccessfulModel> accountSetupSuccessfulModelObj =
      AccountSetupSuccessfulModel().obs;
}
