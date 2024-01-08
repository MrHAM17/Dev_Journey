import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/tracking_order_screen/models/tracking_order_model.dart';
part 'tracking_order_state.dart';

final trackingOrderNotifier =
    StateNotifierProvider<TrackingOrderNotifier, TrackingOrderState>((ref) =>
        TrackingOrderNotifier(
            TrackingOrderState(trackingOrderModelObj: TrackingOrderModel())));

/// A notifier that manages the state of a TrackingOrder according to the event that is dispatched to it.
class TrackingOrderNotifier extends StateNotifier<TrackingOrderState> {
  TrackingOrderNotifier(TrackingOrderState state) : super(state);
}
