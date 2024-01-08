import '../../../core/app_export.dart';

/// This class is used in the [live_item_widget] screen.
class LiveItemModel {
  LiveItemModel({
    this.save,
    this.newPost,
    this.id,
  }) {
    save = save ?? Rx(ImageConstant.imgSave);
    newPost = newPost ?? Rx("New Post");
    id = id ?? Rx("");
  }

  Rx<String>? save;

  Rx<String>? newPost;

  Rx<String>? id;
}
