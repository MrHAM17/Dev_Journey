import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discountitems_item_model.dart';
import 'package:the_3_13_fashionista___e_commerce_app/presentation/discount_items_screen/models/discount_items_model.dart';
part 'discount_items_event.dart';
part 'discount_items_state.dart';

/// A bloc that manages the state of a DiscountItems according to the event that is dispatched to it.
class DiscountItemsBloc extends Bloc<DiscountItemsEvent, DiscountItemsState> {
  DiscountItemsBloc(DiscountItemsState initialState) : super(initialState) {
    on<DiscountItemsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscountItemsInitialEvent event,
    Emitter<DiscountItemsState> emit,
  ) async {
    emit(state.copyWith(
        discountItemsModelObj: state.discountItemsModelObj
            ?.copyWith(discountitemsItemList: fillDiscountitemsItemList())));
  }

  List<DiscountitemsItemModel> fillDiscountitemsItemList() {
    return [
      DiscountitemsItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod4,
          premiumWatch1: "Premium Watch"),
      DiscountitemsItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod458x58,
          premiumWatch1: "Blue shoes"),
      DiscountitemsItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod41,
          premiumWatch1: "Jamdan Dress")
    ];
  }
}
