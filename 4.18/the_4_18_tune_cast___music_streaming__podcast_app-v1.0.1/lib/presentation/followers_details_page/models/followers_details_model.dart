import '../../../core/app_export.dart';import 'ninetyfive_item_model.dart';import 'following1_item_model.dart';/// This class defines the variables used in the [followers_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FollowersDetailsModel {Rx<List<NinetyfiveItemModel>> ninetyfiveItemList = Rx([NinetyfiveItemModel(jennyWilson:ImageConstant.imgImage78.obs,artistName: "Jenny Wilson".obs,followersCounter: "9,489 Followers".obs),NinetyfiveItemModel(jennyWilson:ImageConstant.imgImage79.obs,artistName: "Jenny Foose".obs,followersCounter: "8,811 Followers".obs)]);

Rx<List<Following1ItemModel>> following1ItemList = Rx(List.generate(1,(index) => Following1ItemModel()));

 }
