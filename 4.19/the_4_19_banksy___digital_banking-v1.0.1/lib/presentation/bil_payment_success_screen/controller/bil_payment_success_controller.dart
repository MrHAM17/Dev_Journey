import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/bil_payment_success_screen/models/bil_payment_success_model.dart';

/// A controller class for the BilPaymentSuccessScreen.
///
/// This class manages the state of the BilPaymentSuccessScreen, including the
/// current bilPaymentSuccessModelObj
class BilPaymentSuccessController extends GetxController {
  Rx<BilPaymentSuccessModel> bilPaymentSuccessModelObj =
      BilPaymentSuccessModel().obs;
}
