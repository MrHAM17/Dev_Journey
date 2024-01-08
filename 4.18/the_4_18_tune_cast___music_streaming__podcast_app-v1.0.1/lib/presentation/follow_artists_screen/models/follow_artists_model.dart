import '../../../core/app_export.dart';import 'followartists_item_model.dart';/// This class defines the variables used in the [follow_artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FollowArtistsModel {Rx<List<FollowartistsItemModel>> followartistsItemList = Rx([FollowartistsItemModel(theWeeknd:ImageConstant.imgEllipse1.obs,artistName: "The Weeknd".obs),FollowartistsItemModel(theWeeknd:ImageConstant.imgEllipse4.obs,artistName: "Ryan Jones".obs)]);

 }
