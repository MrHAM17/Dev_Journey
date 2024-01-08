import '../../../core/app_export.dart';import 'frame_item_model.dart';import 'artists_item_model.dart';import 'podcasts_item_model.dart';/// This class defines the variables used in the [podcasts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastsModel {Rx<List<FrameItemModel>> frameItemList = Rx([FrameItemModel(image:ImageConstant.imgImage31.obs,billSullivan: "610: Bill Sullivan | Pleased to Meet ...".obs),FrameItemModel(image:ImageConstant.imgImage32.obs,billSullivan: "487: Mike Rowe | Dirty Jobs and Pe..".obs),FrameItemModel(image:ImageConstant.imgImage33.obs,billSullivan: "938: Tom Wright | Billion Dollar Wh...".obs)]);

Rx<List<ArtistsItemModel>> artistsItemList = Rx([ArtistsItemModel(drDeath:ImageConstant.imgImage34.obs,artistsName: "Dr. Death".obs),ArtistsItemModel(drDeath:ImageConstant.imgImage35.obs,artistsName: "Apple Talk".obs),ArtistsItemModel(drDeath:ImageConstant.imgImage36.obs,artistsName: "What a Day".obs)]);

Rx<List<PodcastsItemModel>> podcastsItemList = Rx([PodcastsItemModel(categories: "Charts".obs,charts:ImageConstant.imgImage91x81.obs),PodcastsItemModel(categories: "Podcasts".obs,charts:ImageConstant.imgImage37.obs),PodcastsItemModel(categories: "New Releases".obs,charts:ImageConstant.imgImage38.obs),PodcastsItemModel(categories: "Only You".obs,charts:ImageConstant.imgImage37.obs),PodcastsItemModel(categories: "Pop".obs,charts:ImageConstant.imgImage39.obs),PodcastsItemModel(categories: "K-Pop".obs,charts:ImageConstant.imgImage40.obs)]);

 }
