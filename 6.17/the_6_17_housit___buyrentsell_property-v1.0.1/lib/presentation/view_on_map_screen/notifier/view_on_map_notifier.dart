import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/view_on_map_screen/models/view_on_map_model.dart';part 'view_on_map_state.dart';final viewOnMapNotifier = StateNotifierProvider<ViewOnMapNotifier, ViewOnMapState>((ref) => ViewOnMapNotifier(ViewOnMapState(viewOnMapModelObj: ViewOnMapModel())));
/// A notifier that manages the state of a ViewOnMap according to the event that is dispatched to it.
class ViewOnMapNotifier extends StateNotifier<ViewOnMapState> {ViewOnMapNotifier(ViewOnMapState state) : super(state);

 }
