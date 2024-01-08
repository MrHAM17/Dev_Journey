import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/not_found_screen/models/not_found_model.dart';
part 'not_found_state.dart';

final notFoundNotifier = StateNotifierProvider<NotFoundNotifier, NotFoundState>(
  (ref) => NotFoundNotifier(NotFoundState(
    searchController: TextEditingController(),
    notFoundModelObj: NotFoundModel(),
  )),
);

/// A notifier that manages the state of a NotFound according to the event that is dispatched to it.
class NotFoundNotifier extends StateNotifier<NotFoundState> {
  NotFoundNotifier(NotFoundState state) : super(state) {}
}
