import '../../../core/app_export.dart';

/// This class is used in the [options_item_widget] screen.
class OptionsItemModel {
  OptionsItemModel({
    this.favorite,
    this.sendMoney,
    this.card,
    this.id,
  }) {
    favorite = favorite ?? Rx(ImageConstant.imgFavorite);
    sendMoney = sendMoney ?? Rx("Send\nMoney");
    card = card ?? Rx("To acc to acc");
    id = id ?? Rx("");
  }

  Rx<String>? favorite;

  Rx<String>? sendMoney;

  Rx<String>? card;

  Rx<String>? id;
}
