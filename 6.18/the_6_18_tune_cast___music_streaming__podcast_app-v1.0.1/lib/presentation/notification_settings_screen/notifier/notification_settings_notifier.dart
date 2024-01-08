import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/notification_settings_screen/models/notification_settings_model.dart';part 'notification_settings_state.dart';final notificationSettingsNotifier = StateNotifierProvider<NotificationSettingsNotifier, NotificationSettingsState>((ref) => NotificationSettingsNotifier(NotificationSettingsState(notificationSettingsModelObj: NotificationSettingsModel())));
/// A notifier that manages the state of a NotificationSettings according to the event that is dispatched to it.
class NotificationSettingsNotifier extends StateNotifier<NotificationSettingsState> {NotificationSettingsNotifier(NotificationSettingsState state) : super(state);

 }
