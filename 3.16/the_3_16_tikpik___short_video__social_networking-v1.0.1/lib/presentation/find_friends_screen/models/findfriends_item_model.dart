import '../../../core/app_export.dart';/// This class is used in the [findfriends_item_widget] screen.
class FindfriendsItemModel {FindfriendsItemModel({this.categoriesShare, this.inviteFriends, this.stayConnectedWith, this.id, }) { categoriesShare = categoriesShare  ?? ImageConstant.imgCategoriesSharePrimary;inviteFriends = inviteFriends  ?? "Invite Friends";stayConnectedWith = stayConnectedWith  ?? "Stay Connected with friends";id = id  ?? ""; }

String? categoriesShare;

String? inviteFriends;

String? stayConnectedWith;

String? id;

 }
