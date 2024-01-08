import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/events_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/events_page/models/events_model.dart';
part 'events_state.dart';

final eventsNotifier = StateNotifierProvider<EventsNotifier, EventsState>(
  (ref) => EventsNotifier(EventsState(
    eventsModelObj: EventsModel(eventsItemList: [
      EventsItemModel(
          fashionMeetup: ImageConstant.imgImage180x283,
          monday: "Monday",
          decemberCounter: "December, 2019",
          monday1: ImageConstant.imgIconOptionsGray500,
          title: "Fashion Meetup",
          time: "Starts at 9:00am in Los Angeles",
          avatarInitials: "+9"),
      EventsItemModel(
          fashionMeetup: ImageConstant.imgImage9,
          monday: "Monday",
          decemberCounter: "December, 2019",
          monday1: ImageConstant.imgOptionsGray500,
          title: "Fashion Meetup",
          time: "Starts at 9:00am in Los Angeles",
          avatarInitials: "+9")
    ]),
  )),
);

/// A notifier that manages the state of a Events according to the event that is dispatched to it.
class EventsNotifier extends StateNotifier<EventsState> {
  EventsNotifier(EventsState state) : super(state) {}
}
