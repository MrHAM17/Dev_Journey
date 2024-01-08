import '../../../core/app_export.dart';

/// This class is used in the [channelfour_item_widget] screen.
class ChannelfourItemModel {
  ChannelfourItemModel({
    this.ktv,
    this.ktv1,
    this.id,
  }) {
    ktv = ktv ?? Rx(ImageConstant.imgBackgroundImage);
    ktv1 = ktv1 ?? Rx("K TV");
    id = id ?? Rx("");
  }

  Rx<String>? ktv;

  Rx<String>? ktv1;

  Rx<String>? id;
}
