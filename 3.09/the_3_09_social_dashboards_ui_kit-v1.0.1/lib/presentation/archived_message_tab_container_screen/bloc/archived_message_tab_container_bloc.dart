import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_09_social_dashboards_ui_kit/presentation/archived_message_tab_container_screen/models/archived_message_tab_container_model.dart';
part 'archived_message_tab_container_event.dart';
part 'archived_message_tab_container_state.dart';

/// A bloc that manages the state of a ArchivedMessageTabContainer according to the event that is dispatched to it.
class ArchivedMessageTabContainerBloc extends Bloc<
    ArchivedMessageTabContainerEvent, ArchivedMessageTabContainerState> {
  ArchivedMessageTabContainerBloc(ArchivedMessageTabContainerState initialState)
      : super(initialState) {
    on<ArchivedMessageTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArchivedMessageTabContainerInitialEvent event,
    Emitter<ArchivedMessageTabContainerState> emit,
  ) async {}
}
