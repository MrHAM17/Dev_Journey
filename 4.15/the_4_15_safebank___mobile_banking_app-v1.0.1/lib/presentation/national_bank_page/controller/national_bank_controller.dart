import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/national_bank_page/models/national_bank_model.dart';

/// A controller class for the NationalBankPage.
///
/// This class manages the state of the NationalBankPage, including the
/// current nationalBankModelObj
class NationalBankController extends GetxController {
  NationalBankController(this.nationalBankModelObj);

  Rx<NationalBankModel> nationalBankModelObj;
}
