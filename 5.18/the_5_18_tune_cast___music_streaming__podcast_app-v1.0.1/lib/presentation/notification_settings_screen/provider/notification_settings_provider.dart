import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/notification_settings_screen/models/notification_settings_model.dart';/// A provider class for the NotificationSettingsScreen.
///
/// This provider manages the state of the NotificationSettingsScreen, including the
/// current notificationSettingsModelObj

// ignore_for_file: must_be_immutable
class NotificationSettingsProvider extends ChangeNotifier {NotificationSettingsModel notificationSettingsModelObj = NotificationSettingsModel();

@override void dispose() { super.dispose(); } 
 }
