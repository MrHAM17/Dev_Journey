import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderslist_item_model.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/profile_my_orders_page/models/profile_my_orders_model.dart';
part 'profile_my_orders_state.dart';

final profileMyOrdersNotifier =
    StateNotifierProvider<ProfileMyOrdersNotifier, ProfileMyOrdersState>(
  (ref) => ProfileMyOrdersNotifier(ProfileMyOrdersState(
    profileMyOrdersModelObj: ProfileMyOrdersModel(orderslistItemList: [
      OrderslistItemModel(
          image: ImageConstant.imgImage110x109,
          price: "12.50",
          shortsInYellow: "shorts in Yellow",
          one: "1"),
      OrderslistItemModel(
          image: ImageConstant.imgImage12,
          price: "99.30",
          shortsInYellow: "Print Maxi Dress",
          one: "1")
    ]),
  )),
);

/// A notifier that manages the state of a ProfileMyOrders according to the event that is dispatched to it.
class ProfileMyOrdersNotifier extends StateNotifier<ProfileMyOrdersState> {
  ProfileMyOrdersNotifier(ProfileMyOrdersState state) : super(state) {}
}
