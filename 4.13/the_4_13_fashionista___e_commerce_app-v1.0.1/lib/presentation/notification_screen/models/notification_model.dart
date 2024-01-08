import 'today_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<TodayItemModel>> todayItemList = Rx([
    TodayItemModel(groupBy: "Today".obs),
    TodayItemModel(groupBy: "Today".obs),
    TodayItemModel(groupBy: "Today".obs),
    TodayItemModel(groupBy: "Yesterday".obs),
    TodayItemModel(groupBy: "Yesterday".obs),
    TodayItemModel(groupBy: "Yesterday".obs)
  ]);
}
