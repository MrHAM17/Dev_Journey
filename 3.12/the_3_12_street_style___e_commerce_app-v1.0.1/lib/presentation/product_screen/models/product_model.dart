// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'twelve_item_model.dart';

/// This class defines the variables used in the [product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductModel extends Equatable {
  ProductModel({this.twelveItemList = const []}) {}

  List<TwelveItemModel> twelveItemList;

  ProductModel copyWith({List<TwelveItemModel>? twelveItemList}) {
    return ProductModel(
      twelveItemList: twelveItemList ?? this.twelveItemList,
    );
  }

  @override
  List<Object?> get props => [twelveItemList];
}
