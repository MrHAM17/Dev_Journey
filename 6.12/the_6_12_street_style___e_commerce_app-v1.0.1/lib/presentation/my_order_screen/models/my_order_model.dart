// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'myorder_item_model.dart';

/// This class defines the variables used in the [my_order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrderModel extends Equatable {
  MyOrderModel({this.myorderItemList = const []}) {}

  List<MyorderItemModel> myorderItemList;

  MyOrderModel copyWith({List<MyorderItemModel>? myorderItemList}) {
    return MyOrderModel(
      myorderItemList: myorderItemList ?? this.myorderItemList,
    );
  }

  @override
  List<Object?> get props => [myorderItemList];
}
