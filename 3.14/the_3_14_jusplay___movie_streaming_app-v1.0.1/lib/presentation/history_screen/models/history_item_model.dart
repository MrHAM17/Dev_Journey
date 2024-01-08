import '../../../core/app_export.dart';

/// This class is used in the [history_item_widget] screen.
class HistoryItemModel {
  HistoryItemModel({
    this.image,
    this.mysteryOfMuye,
    this.actionAdventure,
    this.twentyThousandFiveHundredThirt,
    this.filesize,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle121034;
    mysteryOfMuye =
        mysteryOfMuye ?? "Mystery of Muye : The Guardian of the Mountain";
    actionAdventure = actionAdventure ?? "Action, Adventure";
    twentyThousandFiveHundredThirt =
        twentyThousandFiveHundredThirt ?? "2:05:32";
    filesize = filesize ?? "1.2GB";
    id = id ?? "";
  }

  String? image;

  String? mysteryOfMuye;

  String? actionAdventure;

  String? twentyThousandFiveHundredThirt;

  String? filesize;

  String? id;
}
