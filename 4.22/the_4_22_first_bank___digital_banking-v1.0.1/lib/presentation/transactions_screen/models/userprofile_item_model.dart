import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.arrowIcon,
    this.salesText,
    this.timeText,
    this.amountText,
    this.id,
  }) {
    arrowIcon = arrowIcon ?? Rx(ImageConstant.imgArrowGreen600);
    salesText = salesText ?? Rx("Freepik Sales");
    timeText = timeText ?? Rx("25 Jan, 10.40 PM");
    amountText = amountText ?? Rx("+750");
    id = id ?? Rx("");
  }

  Rx<String>? arrowIcon;

  Rx<String>? salesText;

  Rx<String>? timeText;

  Rx<String>? amountText;

  Rx<String>? id;
}
