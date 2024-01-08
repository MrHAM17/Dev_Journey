import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/filter_choose_location_screen/models/filter_choose_location_model.dart';part 'filter_choose_location_state.dart';final filterChooseLocationNotifier = StateNotifierProvider<FilterChooseLocationNotifier, FilterChooseLocationState>((ref) => FilterChooseLocationNotifier(FilterChooseLocationState(filterChooseLocationModelObj: FilterChooseLocationModel())));
/// A notifier that manages the state of a FilterChooseLocation according to the event that is dispatched to it.
class FilterChooseLocationNotifier extends StateNotifier<FilterChooseLocationState> {FilterChooseLocationNotifier(FilterChooseLocationState state) : super(state);

 }
