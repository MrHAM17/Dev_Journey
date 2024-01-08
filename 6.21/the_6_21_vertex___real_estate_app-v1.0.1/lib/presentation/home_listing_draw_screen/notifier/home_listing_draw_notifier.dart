import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/home_listing_draw_screen/models/home_listing_draw_model.dart';
part 'home_listing_draw_state.dart';

final homeListingDrawNotifier =
    StateNotifierProvider<HomeListingDrawNotifier, HomeListingDrawState>(
  (ref) => HomeListingDrawNotifier(HomeListingDrawState(
    homeListingDrawModelObj: HomeListingDrawModel(),
  )),
);

/// A notifier that manages the state of a HomeListingDraw according to the event that is dispatched to it.
class HomeListingDrawNotifier extends StateNotifier<HomeListingDrawState> {
  HomeListingDrawNotifier(HomeListingDrawState state) : super(state) {}
}
