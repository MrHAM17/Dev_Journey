import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/home_page/models/home_model.dart';part 'home_state.dart';final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>((ref) => HomeNotifier(HomeState(homeModelObj: HomeModel())));
/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {HomeNotifier(HomeState state) : super(state);

 }
