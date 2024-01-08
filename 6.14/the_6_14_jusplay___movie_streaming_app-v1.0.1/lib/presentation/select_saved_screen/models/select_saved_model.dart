// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'selectsaved_item_model.dart';

/// This class defines the variables used in the [select_saved_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectSavedModel extends Equatable {
  SelectSavedModel({this.selectsavedItemList = const []}) {}

  List<SelectsavedItemModel> selectsavedItemList;

  SelectSavedModel copyWith({List<SelectsavedItemModel>? selectsavedItemList}) {
    return SelectSavedModel(
      selectsavedItemList: selectsavedItemList ?? this.selectsavedItemList,
    );
  }

  @override
  List<Object?> get props => [selectsavedItemList];
}
