import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/money_sent_success_screen/models/money_sent_success_model.dart';

/// A controller class for the MoneySentSuccessScreen.
///
/// This class manages the state of the MoneySentSuccessScreen, including the
/// current moneySentSuccessModelObj
class MoneySentSuccessController extends GetxController {
  Rx<MoneySentSuccessModel> moneySentSuccessModelObj =
      MoneySentSuccessModel().obs;
}
