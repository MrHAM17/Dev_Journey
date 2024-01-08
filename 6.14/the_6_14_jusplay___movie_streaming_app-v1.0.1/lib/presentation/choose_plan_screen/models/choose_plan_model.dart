// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chooseplan_item_model.dart';

/// This class defines the variables used in the [choose_plan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChoosePlanModel extends Equatable {
  ChoosePlanModel({this.chooseplanItemList = const []}) {}

  List<ChooseplanItemModel> chooseplanItemList;

  ChoosePlanModel copyWith({List<ChooseplanItemModel>? chooseplanItemList}) {
    return ChoosePlanModel(
      chooseplanItemList: chooseplanItemList ?? this.chooseplanItemList,
    );
  }

  @override
  List<Object?> get props => [chooseplanItemList];
}
