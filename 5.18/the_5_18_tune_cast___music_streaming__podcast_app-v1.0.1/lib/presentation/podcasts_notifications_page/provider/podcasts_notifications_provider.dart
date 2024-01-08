import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/podcasts_notifications_page/models/podcasts_notifications_model.dart';import '../models/podcastsnotifications_item_model.dart';/// A provider class for the PodcastsNotificationsPage.
///
/// This provider manages the state of the PodcastsNotificationsPage, including the
/// current podcastsNotificationsModelObj

// ignore_for_file: must_be_immutable
class PodcastsNotificationsProvider extends ChangeNotifier {PodcastsNotificationsModel podcastsNotificationsModelObj = PodcastsNotificationsModel();

@override void dispose() { super.dispose(); } 
 }
