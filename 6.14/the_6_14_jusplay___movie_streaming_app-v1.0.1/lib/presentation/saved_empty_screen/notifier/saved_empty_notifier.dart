import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/saved_empty_screen/models/saved_empty_model.dart';
part 'saved_empty_state.dart';

final savedEmptyNotifier =
    StateNotifierProvider<SavedEmptyNotifier, SavedEmptyState>(
  (ref) => SavedEmptyNotifier(SavedEmptyState(
    savedEmptyModelObj: SavedEmptyModel(),
  )),
);

/// A notifier that manages the state of a SavedEmpty according to the event that is dispatched to it.
class SavedEmptyNotifier extends StateNotifier<SavedEmptyState> {
  SavedEmptyNotifier(SavedEmptyState state) : super(state) {}
}
