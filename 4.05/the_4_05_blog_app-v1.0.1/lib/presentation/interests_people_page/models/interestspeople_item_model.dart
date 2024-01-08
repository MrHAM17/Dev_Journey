import '../../../core/app_export.dart';

/// This class is used in the [interestspeople_item_widget] screen.
class InterestspeopleItemModel {
  InterestspeopleItemModel({
    this.morePeopleToFollow,
    this.id,
  }) {
    morePeopleToFollow = morePeopleToFollow ?? Rx("MORE PEOPLE TO FOLLOW");
    id = id ?? Rx("");
  }

  Rx<String>? morePeopleToFollow;

  Rx<String>? id;
}
