import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/past_tours_screen/models/past_tours_model.dart';part 'past_tours_state.dart';final pastToursNotifier = StateNotifierProvider<PastToursNotifier, PastToursState>((ref) => PastToursNotifier(PastToursState(complete: false, pastToursModelObj: PastToursModel())));
/// A notifier that manages the state of a PastTours according to the event that is dispatched to it.
class PastToursNotifier extends StateNotifier<PastToursState> {PastToursNotifier(PastToursState state) : super(state);

void changeCheckBox1(bool value) { state = state.copyWith(complete: value); } 
 }
