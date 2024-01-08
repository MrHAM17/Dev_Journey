import '../../../core/app_export.dart';

/// This class is used in the [notification_item_widget] screen.
class NotificationItemModel {
  NotificationItemModel({
    this.duration,
    this.duration1,
    this.id,
  }) {
    duration = duration ?? "let's get 100% cashback valid only 6 hours";
    duration1 = duration1 ?? "10 minutes ago";
    id = id ?? "";
  }

  String? duration;

  String? duration1;

  String? id;
}
