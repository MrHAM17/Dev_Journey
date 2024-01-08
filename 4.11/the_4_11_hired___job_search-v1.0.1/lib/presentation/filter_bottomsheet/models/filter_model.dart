import 'fiftyfive_item_model.dart';
import 'jobs_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [filter_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {
  Rx<List<FiftyfiveItemModel>> fiftyfiveItemList =
      Rx(List.generate(6, (index) => FiftyfiveItemModel()));

  Rx<List<JobsItemModel>> jobsItemList =
      Rx(List.generate(2, (index) => JobsItemModel()));
}
