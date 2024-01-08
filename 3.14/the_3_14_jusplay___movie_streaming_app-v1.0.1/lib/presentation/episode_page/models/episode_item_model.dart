import '../../../core/app_export.dart';

/// This class is used in the [episode_item_widget] screen.
class EpisodeItemModel {
  EpisodeItemModel({
    this.trailer,
    this.trailer1,
    this.aladdinAStreet,
    this.id,
  }) {
    trailer = trailer ?? "Trailer";
    trailer1 = trailer1 ?? ImageConstant.imgDownload;
    aladdinAStreet = aladdinAStreet ??
        "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find...";
    id = id ?? "";
  }

  String? trailer;

  String? trailer1;

  String? aladdinAStreet;

  String? id;
}
