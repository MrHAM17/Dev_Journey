import '../../../core/app_export.dart';

/// This class is used in the [stream_item_widget] screen.
class StreamItemModel {
  StreamItemModel({
    this.eighteen,
    this.id,
  }) {
    eighteen = eighteen ?? Rx(ImageConstant.img18);
    id = id ?? Rx("");
  }

  Rx<String>? eighteen;

  Rx<String>? id;
}
