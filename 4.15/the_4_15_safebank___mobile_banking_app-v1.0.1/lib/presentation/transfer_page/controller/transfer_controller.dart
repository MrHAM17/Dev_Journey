import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/transfer_page/models/transfer_model.dart';

/// A controller class for the TransferPage.
///
/// This class manages the state of the TransferPage, including the
/// current transferModelObj
class TransferController extends GetxController {
  TransferController(this.transferModelObj);

  Rx<TransferModel> transferModelObj;
}
