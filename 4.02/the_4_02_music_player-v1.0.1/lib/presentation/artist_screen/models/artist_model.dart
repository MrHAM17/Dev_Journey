import '../../../core/app_export.dart';
import 'renaissance_item_model.dart';

/// This class defines the variables used in the [artist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistModel {
  Rx<List<RenaissanceItemModel>> renaissanceItemList = Rx([
    RenaissanceItemModel(
        urgentSiege: ImageConstant.imgThumbnails.obs,
        urgentSiege1: "Urgent Siege".obs,
        damnedAnthem: "Damned Anthem".obs),
    RenaissanceItemModel(
        urgentSiege: ImageConstant.imgThumbnails181x159.obs,
        urgentSiege1: "Urgent Siege".obs,
        damnedAnthem: "Damned Anthem".obs)
  ]);
}
