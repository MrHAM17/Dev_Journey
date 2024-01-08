import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.lifeInsuranceIcon,
    this.lifeInsuranceText,
    this.unlimitedProtectionText,
    this.id,
  }) {
    lifeInsuranceIcon =
        lifeInsuranceIcon ?? Rx(ImageConstant.imgLifeInsuranceFilled);
    lifeInsuranceText = lifeInsuranceText ?? Rx("Life Insurance");
    unlimitedProtectionText =
        unlimitedProtectionText ?? Rx("Unlimited protection");
    id = id ?? Rx("");
  }

  Rx<String>? lifeInsuranceIcon;

  Rx<String>? lifeInsuranceText;

  Rx<String>? unlimitedProtectionText;

  Rx<String>? id;
}
