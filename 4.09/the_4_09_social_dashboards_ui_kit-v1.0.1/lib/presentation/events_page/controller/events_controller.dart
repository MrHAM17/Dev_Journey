import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/events_page/models/events_model.dart';

/// A controller class for the EventsPage.
///
/// This class manages the state of the EventsPage, including the
/// current eventsModelObj
class EventsController extends GetxController {
  EventsController(this.eventsModelObj);

  Rx<EventsModel> eventsModelObj;
}
