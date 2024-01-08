import '../../../core/app_export.dart';/// This class is used in the [findfriends_item_widget] screen.
class FindfriendsItemModel {FindfriendsItemModel({this.categoriesShare, this.inviteFriends, this.stayConnectedWith, this.id, }) { categoriesShare = categoriesShare  ?? Rx(ImageConstant.imgCategoriesSharePrimary);inviteFriends = inviteFriends  ?? Rx("Invite Friends");stayConnectedWith = stayConnectedWith  ?? Rx("Stay Connected with friends");id = id  ?? Rx(""); }

Rx<String>? categoriesShare;

Rx<String>? inviteFriends;

Rx<String>? stayConnectedWith;

Rx<String>? id;

 }
