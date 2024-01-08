import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/unsplashvfrcrteqkleight_item_model.dart';
import '../models/orderstatus_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/order_status_screen/models/order_status_model.dart';
part 'order_status_state.dart';

final orderStatusNotifier =
    StateNotifierProvider<OrderStatusNotifier, OrderStatusState>((ref) =>
        OrderStatusNotifier(OrderStatusState(
            sliderIndex: 0,
            orderStatusModelObj: OrderStatusModel(
                unsplashvfrcrteqkleightItemList: List.generate(
                    1, (index) => UnsplashvfrcrteqkleightItemModel()),
                orderstatusItemList: [
                  OrderstatusItemModel(
                      orderReceived: ImageConstant.imgSettings,
                      orderReceived1: "Order Received",
                      time: "05:48 PM, 7 June 2021"),
                  OrderstatusItemModel(
                      orderReceived: ImageConstant.imgSettings,
                      orderReceived1: "On The Way",
                      time: "05:55 PM, 7 June 2021"),
                  OrderstatusItemModel(
                      orderReceived: ImageConstant.imgUserLime900,
                      orderReceived1: "Delivered",
                      time: "Finish Time In 25 Min")
                ]))));

/// A notifier that manages the state of a OrderStatus according to the event that is dispatched to it.
class OrderStatusNotifier extends StateNotifier<OrderStatusState> {
  OrderStatusNotifier(OrderStatusState state) : super(state);
}
