import 'package:the_5_19_banksy___digital_banking/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

class MoneyExchangeModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];
}
