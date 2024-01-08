import '../../../core/app_export.dart';import 'follow_item_model.dart';import 'autolayouthorizontal_item_model.dart';/// This class defines the variables used in the [search_results_top_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsTopModel {Rx<List<FollowItemModel>> followItemList = Rx([FollowItemModel(arianaGrande:ImageConstant.imgEllipse8.obs,arianaGrande1: "Ariana Grande".obs,price: "arianagrande | 27.3M followers".obs),FollowItemModel(arianaGrande:ImageConstant.imgEllipse9.obs,arianaGrande1: "Ariana Cooper".obs,price: "arianacooper | 24.5M followers".obs)]);

Rx<List<AutolayouthorizontalItemModel>> autolayouthorizontalItemList = Rx([AutolayouthorizontalItemModel(k:ImageConstant.imgImage5.obs,k1:ImageConstant.imgOverflowmenuPrimary.obs,k2: "367.5K".obs),AutolayouthorizontalItemModel(k:ImageConstant.imgImage10.obs,k2: "837.9K".obs),AutolayouthorizontalItemModel(k:ImageConstant.imgImage7.obs,k2: "736.2K".obs)]);

 }
