import '../../../core/app_export.dart';import 'newreleases_item_model.dart';/// This class defines the variables used in the [new_releases_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewReleasesModel {Rx<List<NewreleasesItemModel>> newreleasesItemList = Rx([NewreleasesItemModel(positions:ImageConstant.imgImage184x184.obs,positions1: "Positions".obs,arianaGrande: "Ariana Grande".obs),NewreleasesItemModel(positions:ImageConstant.imgImage41.obs,positions1: "Motomami".obs,arianaGrande: "The Weeknd".obs)]);

 }
