import '../../../core/app_export.dart';
import 'trending_item_model.dart';

/// This class defines the variables used in the [trending_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingModel {
  Rx<List<TrendingItemModel>> trendingItemList = Rx([
    TrendingItemModel(
        image: ImageConstant.img40221x382.obs,
        rickOnad: "Rick Onad".obs,
        time: "40 min ago".obs,
        thisIsTheMoment:
            "This is the moment where i take a photo of a couple hugging in a beautiful rice field."
                .obs,
        huge: "#huge".obs,
        fotography: "#fotography".obs,
        nature: "#nature".obs),
    TrendingItemModel(
        image: ImageConstant.img401.obs,
        rickOnad: "Rick Onad".obs,
        time: "40 min ago".obs,
        thisIsTheMoment:
            "This is the moment where i take a photo of a couple hugging in a beautiful rice field."
                .obs,
        huge: "#huge".obs,
        fotography: "#fotography".obs,
        nature: "#nature".obs)
  ]);
}
