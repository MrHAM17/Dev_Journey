import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/notification_empty_states_screen/models/notification_empty_states_model.dart';part 'notification_empty_states_state.dart';final notificationEmptyStatesNotifier = StateNotifierProvider<NotificationEmptyStatesNotifier, NotificationEmptyStatesState>((ref) => NotificationEmptyStatesNotifier(NotificationEmptyStatesState(notificationEmptyStatesModelObj: NotificationEmptyStatesModel())));
/// A notifier that manages the state of a NotificationEmptyStates according to the event that is dispatched to it.
class NotificationEmptyStatesNotifier extends StateNotifier<NotificationEmptyStatesState> {NotificationEmptyStatesNotifier(NotificationEmptyStatesState state) : super(state);

 }
