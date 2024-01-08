import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_09_social_dashboards_ui_kit/presentation/new_post_bottomsheet/models/new_post_model.dart';
part 'new_post_event.dart';
part 'new_post_state.dart';

/// A bloc that manages the state of a NewPost according to the event that is dispatched to it.
class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  NewPostBloc(NewPostState initialState) : super(initialState) {
    on<NewPostInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewPostInitialEvent event,
    Emitter<NewPostState> emit,
  ) async {}
}
