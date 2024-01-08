import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/no_history_screen/models/no_history_model.dart';
part 'no_history_state.dart';

final noHistoryNotifier =
    StateNotifierProvider<NoHistoryNotifier, NoHistoryState>((ref) =>
        NoHistoryNotifier(NoHistoryState(noHistoryModelObj: NoHistoryModel())));

/// A notifier that manages the state of a NoHistory according to the event that is dispatched to it.
class NoHistoryNotifier extends StateNotifier<NoHistoryState> {
  NoHistoryNotifier(NoHistoryState state) : super(state);
}
