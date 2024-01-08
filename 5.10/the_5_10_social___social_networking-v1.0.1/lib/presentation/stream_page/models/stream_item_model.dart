import '../../../core/app_export.dart';

/// This class is used in the [stream_item_widget] screen.
class StreamItemModel {
  StreamItemModel({
    this.eighteen,
    this.id,
  }) {
    eighteen = eighteen ?? ImageConstant.img18;
    id = id ?? "";
  }

  String? eighteen;

  String? id;
}
