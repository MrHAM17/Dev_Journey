import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/send_money_screen/models/send_money_model.dart';

/// A controller class for the SendMoneyScreen.
///
/// This class manages the state of the SendMoneyScreen, including the
/// current sendMoneyModelObj
class SendMoneyController extends GetxController {
  Rx<SendMoneyModel> sendMoneyModelObj = SendMoneyModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in sendMoneyModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    sendMoneyModelObj.value.dropdownItemList.refresh();
  }
}
