import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_05_blog_app/presentation/interests_people_tab_container_screen/models/interests_people_tab_container_model.dart';
part 'interests_people_tab_container_state.dart';

final interestsPeopleTabContainerNotifier = StateNotifierProvider<
    InterestsPeopleTabContainerNotifier, InterestsPeopleTabContainerState>(
  (ref) => InterestsPeopleTabContainerNotifier(InterestsPeopleTabContainerState(
    interestsPeopleTabContainerModelObj: InterestsPeopleTabContainerModel(),
  )),
);

/// A notifier that manages the state of a InterestsPeopleTabContainer according to the event that is dispatched to it.
class InterestsPeopleTabContainerNotifier
    extends StateNotifier<InterestsPeopleTabContainerState> {
  InterestsPeopleTabContainerNotifier(InterestsPeopleTabContainerState state)
      : super(state) {}
}
