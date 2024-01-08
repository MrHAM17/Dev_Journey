import '../../../core/app_export.dart';/// This class is used in the [follow_item_widget] screen.
class FollowItemModel {FollowItemModel({this.handsome, this.songTitle, this.details, this.overflowMenu, this.handsome1, this.id, }) { handsome = handsome  ?? Rx(ImageConstant.imgImage27);songTitle = songTitle  ?? Rx("HANDSOME");details = details  ?? Rx("Warren Hue");overflowMenu = overflowMenu  ?? Rx(ImageConstant.imgOverflowMenuOnprimarycontainer);handsome1 = handsome1  ?? Rx(ImageConstant.imgCategoriesMore);id = id  ?? Rx(""); }

Rx<String>? handsome;

Rx<String>? songTitle;

Rx<String>? details;

Rx<String>? overflowMenu;

Rx<String>? handsome1;

Rx<String>? id;

 }
