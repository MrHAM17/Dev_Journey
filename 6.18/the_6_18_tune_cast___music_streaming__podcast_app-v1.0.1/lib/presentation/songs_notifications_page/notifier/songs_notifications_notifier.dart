import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/songsnotifications_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/songs_notifications_page/models/songs_notifications_model.dart';
part 'songs_notifications_state.dart';

final songsNotificationsNotifier =
    StateNotifierProvider<SongsNotificationsNotifier, SongsNotificationsState>(
  (ref) => SongsNotificationsNotifier(SongsNotificationsState(
    songsNotificationsModelObj:
        SongsNotificationsModel(songsnotificationsItemList: [
      SongsnotificationsItemModel(
          today: ImageConstant.imgImage80x80,
          today1: "Today",
          text: "|",
          time: "04:36 mins",
          breakmysoul: "BREAK MY SOUL",
          beyonce: "Beyonce",
          text1: "|",
          album: "Album",
          today2: ImageConstant.imgVectorGray90001)
    ]),
  )),
);

/// A notifier that manages the state of a SongsNotifications according to the event that is dispatched to it.
class SongsNotificationsNotifier
    extends StateNotifier<SongsNotificationsState> {
  SongsNotificationsNotifier(SongsNotificationsState state) : super(state) {}
}
