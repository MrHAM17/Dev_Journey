// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:the_3_11_hired___job_search/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [new_position_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewPositionModel extends Equatable {
  NewPositionModel({
    this.dropdownItemList = const [],
    this.selectedSmallLabelRegular,
    this.smallLabelRegular = "Select Date",
    this.selectedSmallLabelRegular1,
    this.smallLabelRegular1 = "Select Date",
  }) {
    selectedSmallLabelRegular = selectedSmallLabelRegular ?? DateTime.now();
    selectedSmallLabelRegular1 = selectedSmallLabelRegular1 ?? DateTime.now();
  }

  List<SelectionPopupModel> dropdownItemList;

  DateTime? selectedSmallLabelRegular;

  String smallLabelRegular;

  DateTime? selectedSmallLabelRegular1;

  String smallLabelRegular1;

  NewPositionModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    DateTime? selectedSmallLabelRegular,
    String? smallLabelRegular,
    DateTime? selectedSmallLabelRegular1,
    String? smallLabelRegular1,
  }) {
    return NewPositionModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      selectedSmallLabelRegular:
          selectedSmallLabelRegular ?? this.selectedSmallLabelRegular,
      smallLabelRegular: smallLabelRegular ?? this.smallLabelRegular,
      selectedSmallLabelRegular1:
          selectedSmallLabelRegular1 ?? this.selectedSmallLabelRegular1,
      smallLabelRegular1: smallLabelRegular1 ?? this.smallLabelRegular1,
    );
  }

  @override
  List<Object?> get props => [
        dropdownItemList,
        selectedSmallLabelRegular,
        smallLabelRegular,
        selectedSmallLabelRegular1,
        smallLabelRegular1
      ];
}