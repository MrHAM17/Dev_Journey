// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:the_3_15_safebank___mobile_banking_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [sign_up_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel extends Equatable {
  SignUpModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  SignUpModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return SignUpModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
