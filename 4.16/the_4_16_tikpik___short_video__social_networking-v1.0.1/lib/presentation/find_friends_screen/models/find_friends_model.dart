import '../../../core/app_export.dart';import 'findfriends_item_model.dart';/// This class defines the variables used in the [find_friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindFriendsModel {Rx<List<FindfriendsItemModel>> findfriendsItemList = Rx([FindfriendsItemModel(categoriesShare:ImageConstant.imgCategoriesSharePrimary.obs,inviteFriends: "Invite Friends".obs,stayConnectedWith: "Stay Connected with friends".obs)]);

 }
