import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/let_s_you_in_screen/models/let_s_you_in_model.dart';part 'let_s_you_in_state.dart';final letSYouInNotifier = StateNotifierProvider<LetSYouInNotifier, LetSYouInState>((ref) => LetSYouInNotifier(LetSYouInState(letSYouInModelObj: LetSYouInModel())));
/// A notifier that manages the state of a LetSYouIn according to the event that is dispatched to it.
class LetSYouInNotifier extends StateNotifier<LetSYouInState> {LetSYouInNotifier(LetSYouInState state) : super(state);

 }
