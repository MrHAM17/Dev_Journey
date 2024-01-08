import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/saved_empty_screen/models/saved_empty_model.dart';
part 'saved_empty_event.dart';
part 'saved_empty_state.dart';

/// A bloc that manages the state of a SavedEmpty according to the event that is dispatched to it.
class SavedEmptyBloc extends Bloc<SavedEmptyEvent, SavedEmptyState> {
  SavedEmptyBloc(SavedEmptyState initialState) : super(initialState) {
    on<SavedEmptyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SavedEmptyInitialEvent event,
    Emitter<SavedEmptyState> emit,
  ) async {}
}
