// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'shop_item_model.dart';

/// This class defines the variables used in the [shop_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShopModel extends Equatable {
  ShopModel({this.shopItemList = const []}) {}

  List<ShopItemModel> shopItemList;

  ShopModel copyWith({List<ShopItemModel>? shopItemList}) {
    return ShopModel(
      shopItemList: shopItemList ?? this.shopItemList,
    );
  }

  @override
  List<Object?> get props => [shopItemList];
}
