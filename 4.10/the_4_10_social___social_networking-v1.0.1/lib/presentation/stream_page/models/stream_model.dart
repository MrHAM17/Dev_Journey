import '../../../core/app_export.dart';
import 'stream_item_model.dart';

/// This class defines the variables used in the [stream_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StreamModel {
  Rx<List<StreamItemModel>> streamItemList =
      Rx([StreamItemModel(eighteen: ImageConstant.img18.obs)]);
}
