import '../../../core/app_export.dart';

/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {
  NotificationsItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
