import '../../../core/app_export.dart';import 'podcasters_item_model.dart';/// This class defines the variables used in the [podcasters_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastersModel {Rx<List<PodcastersItemModel>> podcastersItemList = Rx([PodcastersItemModel(image:ImageConstant.imgImage80x80.obs,artistName: "The Jordan Harbinger Show".obs,episodesCounter: "692 Episodes".obs),PodcastersItemModel(image:ImageConstant.imgImage80x80.obs,artistName: "Invest Like The Best".obs,episodesCounter: "493 Episodes".obs),PodcastersItemModel(image:ImageConstant.imgImage95.obs,artistName: "The Breakfast Club".obs,episodesCounter: "682 Episodes".obs),PodcastersItemModel(image:ImageConstant.imgImage80x80.obs,artistName: "What a Day".obs,episodesCounter: "934 Episodes".obs),PodcastersItemModel(image:ImageConstant.imgImage97.obs,artistName: "SaaS & Scotch".obs,episodesCounter: "837 Episodes".obs)]);

 }
