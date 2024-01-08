import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/events_page/models/events_model.dart';
import '../models/events_item_model.dart';

/// A provider class for the EventsPage.
///
/// This provider manages the state of the EventsPage, including the
/// current eventsModelObj

// ignore_for_file: must_be_immutable
class EventsProvider extends ChangeNotifier {
  EventsModel eventsModelObj = EventsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
