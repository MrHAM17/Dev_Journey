import '../../../core/app_export.dart';

/// This class is used in the [downloaded_item_widget] screen.
class DownloadedItemModel {
  DownloadedItemModel({
    this.image,
    this.actionAdventure,
    this.twentyThousandFiveHundredThirt,
    this.filesize,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle12103;
    actionAdventure = actionAdventure ?? "Action, Adventure";
    twentyThousandFiveHundredThirt =
        twentyThousandFiveHundredThirt ?? "2:05:32";
    filesize = filesize ?? "1.2GB";
    id = id ?? "";
  }

  String? image;

  String? actionAdventure;

  String? twentyThousandFiveHundredThirt;

  String? filesize;

  String? id;
}
