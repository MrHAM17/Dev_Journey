import '../../../core/app_export.dart';

/// This class is used in the [selectsaved_item_widget] screen.
class SelectsavedItemModel {
  SelectsavedItemModel({
    this.image,
    this.theIceAgeAdventures,
    this.actionAdventure,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle121031;
    theIceAgeAdventures =
        theIceAgeAdventures ?? "The Ice Age: Adventures of buck Wild";
    actionAdventure = actionAdventure ?? "Action, Adventure";
    id = id ?? "";
  }

  String? image;

  String? theIceAgeAdventures;

  String? actionAdventure;

  String? id;
}
