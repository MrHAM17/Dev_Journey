import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/home_listing_screen/models/home_listing_model.dart';part 'home_listing_state.dart';final homeListingNotifier = StateNotifierProvider<HomeListingNotifier, HomeListingState>((ref) => HomeListingNotifier(HomeListingState(homeListingModelObj: HomeListingModel())));
/// A notifier that manages the state of a HomeListing according to the event that is dispatched to it.
class HomeListingNotifier extends StateNotifier<HomeListingState> {HomeListingNotifier(HomeListingState state) : super(state);

 }
