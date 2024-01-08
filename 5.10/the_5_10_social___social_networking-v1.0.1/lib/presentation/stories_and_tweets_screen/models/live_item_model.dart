import '../../../core/app_export.dart';

/// This class is used in the [live_item_widget] screen.
class LiveItemModel {
  LiveItemModel({
    this.save,
    this.newPost,
    this.id,
  }) {
    save = save ?? ImageConstant.imgSave;
    newPost = newPost ?? "New Post";
    id = id ?? "";
  }

  String? save;

  String? newPost;

  String? id;
}
