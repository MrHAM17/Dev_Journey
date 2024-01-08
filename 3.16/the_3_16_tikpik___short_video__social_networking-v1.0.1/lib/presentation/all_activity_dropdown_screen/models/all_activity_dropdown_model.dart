// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:the_3_16_tikpik___short_video__social_networking/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [all_activity_dropdown_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllActivityDropdownModel extends Equatable {AllActivityDropdownModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

AllActivityDropdownModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return AllActivityDropdownModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
