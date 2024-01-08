import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/transfer_amount_screen/models/transfer_amount_model.dart';

/// A controller class for the TransferAmountScreen.
///
/// This class manages the state of the TransferAmountScreen, including the
/// current transferAmountModelObj
class TransferAmountController extends GetxController {
  Rx<TransferAmountModel> transferAmountModelObj = TransferAmountModel().obs;
}
