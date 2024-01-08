import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/no_history_screen/models/no_history_model.dart';
part 'no_history_event.dart';
part 'no_history_state.dart';

/// A bloc that manages the state of a NoHistory according to the event that is dispatched to it.
class NoHistoryBloc extends Bloc<NoHistoryEvent, NoHistoryState> {
  NoHistoryBloc(NoHistoryState initialState) : super(initialState) {
    on<NoHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoHistoryInitialEvent event,
    Emitter<NoHistoryState> emit,
  ) async {}
}
