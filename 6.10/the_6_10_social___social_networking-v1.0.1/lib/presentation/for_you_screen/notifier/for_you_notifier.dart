import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/for_you_screen/models/for_you_model.dart';
part 'for_you_state.dart';

final forYouNotifier = StateNotifierProvider<ForYouNotifier, ForYouState>(
  (ref) => ForYouNotifier(ForYouState(
    forYouModelObj: ForYouModel(),
  )),
);

/// A notifier that manages the state of a ForYou according to the event that is dispatched to it.
class ForYouNotifier extends StateNotifier<ForYouState> {
  ForYouNotifier(ForYouState state) : super(state) {}
}
