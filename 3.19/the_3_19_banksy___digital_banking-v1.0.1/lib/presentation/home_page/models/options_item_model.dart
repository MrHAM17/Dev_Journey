import '../../../core/app_export.dart';

/// This class is used in the [options_item_widget] screen.
class OptionsItemModel {
  OptionsItemModel({
    this.favorite,
    this.sendMoney,
    this.card,
    this.id,
  }) {
    favorite = favorite ?? ImageConstant.imgFavorite;
    sendMoney = sendMoney ?? "Send\nMoney";
    card = card ?? "To acc to acc";
    id = id ?? "";
  }

  String? favorite;

  String? sendMoney;

  String? card;

  String? id;
}
