import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/help_screen/models/help_model.dart';
part 'help_state.dart';

final helpNotifier = StateNotifierProvider<HelpNotifier, HelpState>((ref) =>
    HelpNotifier(HelpState(
        searchController: TextEditingController(), helpModelObj: HelpModel())));

/// A notifier that manages the state of a Help according to the event that is dispatched to it.
class HelpNotifier extends StateNotifier<HelpState> {
  HelpNotifier(HelpState state) : super(state);
}
