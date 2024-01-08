import 'fiftyfive_item_model.dart';
import 'jobs_item_model.dart';
import '../../../core/app_export.dart';

class FilterModel {
  List<FiftyfiveItemModel> fiftyfiveItemList =
      List.generate(6, (index) => FiftyfiveItemModel());

  List<JobsItemModel> jobsItemList =
      List.generate(2, (index) => JobsItemModel());
}
