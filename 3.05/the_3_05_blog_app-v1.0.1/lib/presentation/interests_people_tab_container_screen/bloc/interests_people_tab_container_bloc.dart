import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_05_blog_app/presentation/interests_people_tab_container_screen/models/interests_people_tab_container_model.dart';
part 'interests_people_tab_container_event.dart';
part 'interests_people_tab_container_state.dart';

/// A bloc that manages the state of a InterestsPeopleTabContainer according to the event that is dispatched to it.
class InterestsPeopleTabContainerBloc extends Bloc<
    InterestsPeopleTabContainerEvent, InterestsPeopleTabContainerState> {
  InterestsPeopleTabContainerBloc(InterestsPeopleTabContainerState initialState)
      : super(initialState) {
    on<InterestsPeopleTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InterestsPeopleTabContainerInitialEvent event,
    Emitter<InterestsPeopleTabContainerState> emit,
  ) async {}
}
