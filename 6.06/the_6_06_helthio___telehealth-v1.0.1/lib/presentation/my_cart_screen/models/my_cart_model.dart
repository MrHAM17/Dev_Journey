// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'durgs_item_model.dart';

/// This class defines the variables used in the [my_cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartModel extends Equatable {
  MyCartModel({this.durgsItemList = const []}) {}

  List<DurgsItemModel> durgsItemList;

  MyCartModel copyWith({List<DurgsItemModel>? durgsItemList}) {
    return MyCartModel(
      durgsItemList: durgsItemList ?? this.durgsItemList,
    );
  }

  @override
  List<Object?> get props => [durgsItemList];
}
