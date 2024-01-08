import 'duration_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel {
  Rx<List<DurationItemModel>> durationItemList = Rx([
    DurationItemModel(groupBy: "Today, 25 June".obs),
    DurationItemModel(groupBy: "Today, 25 June".obs),
    DurationItemModel(groupBy: "Today, 25 June".obs),
    DurationItemModel(groupBy: "Today, 25 June".obs),
    DurationItemModel(groupBy: "Yesterday".obs),
    DurationItemModel(groupBy: "Yesterday".obs),
    DurationItemModel(groupBy: "Yesterday".obs),
    DurationItemModel(groupBy: "20 June, 2022".obs),
    DurationItemModel(groupBy: "20 June, 2022".obs)
  ]);
}
