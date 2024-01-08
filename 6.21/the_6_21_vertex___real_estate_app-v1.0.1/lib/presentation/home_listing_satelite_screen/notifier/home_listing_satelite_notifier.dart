import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/home_listing_satelite_screen/models/home_listing_satelite_model.dart';part 'home_listing_satelite_state.dart';final homeListingSateliteNotifier = StateNotifierProvider<HomeListingSateliteNotifier, HomeListingSateliteState>((ref) => HomeListingSateliteNotifier(HomeListingSateliteState(homeListingSateliteModelObj: HomeListingSateliteModel())));
/// A notifier that manages the state of a HomeListingSatelite according to the event that is dispatched to it.
class HomeListingSateliteNotifier extends StateNotifier<HomeListingSateliteState> {HomeListingSateliteNotifier(HomeListingSateliteState state) : super(state);

 }
