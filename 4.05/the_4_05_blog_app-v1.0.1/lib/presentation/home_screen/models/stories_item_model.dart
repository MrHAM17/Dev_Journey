import '../../../core/app_export.dart';

/// This class is used in the [stories_item_widget] screen.
class StoriesItemModel {
  StoriesItemModel({
    this.home,
    this.easyToUse,
    this.duration,
    this.time,
    this.id,
  }) {
    home = home ?? Rx("LOGO");
    easyToUse = easyToUse ?? Rx("Lorem Ipsum dolor set amet");
    duration = duration ?? Rx("16 days ago");
    time = time ?? Rx("3 min read");
    id = id ?? Rx("");
  }

  Rx<String>? home;

  Rx<String>? easyToUse;

  Rx<String>? duration;

  Rx<String>? time;

  Rx<String>? id;
}
