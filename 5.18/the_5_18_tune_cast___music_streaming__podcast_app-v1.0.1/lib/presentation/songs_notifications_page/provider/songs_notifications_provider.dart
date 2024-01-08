import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/songs_notifications_page/models/songs_notifications_model.dart';import '../models/songsnotifications_item_model.dart';/// A provider class for the SongsNotificationsPage.
///
/// This provider manages the state of the SongsNotificationsPage, including the
/// current songsNotificationsModelObj

// ignore_for_file: must_be_immutable
class SongsNotificationsProvider extends ChangeNotifier {SongsNotificationsModel songsNotificationsModelObj = SongsNotificationsModel();

@override void dispose() { super.dispose(); } 
 }
