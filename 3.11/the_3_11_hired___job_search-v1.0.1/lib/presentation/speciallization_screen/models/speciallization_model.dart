// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'speciallization_item_model.dart';

/// This class defines the variables used in the [speciallization_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SpeciallizationModel extends Equatable {
  SpeciallizationModel({this.speciallizationItemList = const []}) {}

  List<SpeciallizationItemModel> speciallizationItemList;

  SpeciallizationModel copyWith(
      {List<SpeciallizationItemModel>? speciallizationItemList}) {
    return SpeciallizationModel(
      speciallizationItemList:
          speciallizationItemList ?? this.speciallizationItemList,
    );
  }

  @override
  List<Object?> get props => [speciallizationItemList];
}
