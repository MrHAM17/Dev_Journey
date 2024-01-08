import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discountitems_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/discount_items_screen/models/discount_items_model.dart';
part 'discount_items_state.dart';

final discountItemsNotifier = StateNotifierProvider<DiscountItemsNotifier,
    DiscountItemsState>((ref) => DiscountItemsNotifier(DiscountItemsState(
        discountItemsModelObj: DiscountItemsModel(discountitemsItemList: [
      DiscountitemsItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod4,
          premiumWatch1: "Premium Watch"),
      DiscountitemsItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod458x58,
          premiumWatch1: "Blue shoes"),
      DiscountitemsItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod41,
          premiumWatch1: "Jamdan Dress")
    ]))));

/// A notifier that manages the state of a DiscountItems according to the event that is dispatched to it.
class DiscountItemsNotifier extends StateNotifier<DiscountItemsState> {
  DiscountItemsNotifier(DiscountItemsState state) : super(state);
}
