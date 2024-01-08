import '../../../core/app_export.dart';

/// This class is used in the [interestspeople_item_widget] screen.
class InterestspeopleItemModel {
  InterestspeopleItemModel({
    this.morePeopleToFollow,
    this.id,
  }) {
    morePeopleToFollow = morePeopleToFollow ?? "MORE PEOPLE TO FOLLOW";
    id = id ?? "";
  }

  String? morePeopleToFollow;

  String? id;
}
