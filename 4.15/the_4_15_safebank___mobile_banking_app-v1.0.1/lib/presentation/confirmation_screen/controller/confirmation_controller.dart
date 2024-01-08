import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/confirmation_screen/models/confirmation_model.dart';

/// A controller class for the ConfirmationScreen.
///
/// This class manages the state of the ConfirmationScreen, including the
/// current confirmationModelObj
class ConfirmationController extends GetxController {
  Rx<ConfirmationModel> confirmationModelObj = ConfirmationModel().obs;
}
