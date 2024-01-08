import '../../../core/app_export.dart';/// This class is used in the [postsaddsounds_item_widget] screen.
class PostsaddsoundsItemModel {PostsaddsoundsItemModel({this.asItWas, this.overflowMenu, this.asItWas1, this.harryStyles, this.time, this.distance, this.m, this.id, }) { asItWas = asItWas  ?? Rx(ImageConstant.imgImage15);overflowMenu = overflowMenu  ?? Rx(ImageConstant.imgOverflowMenuOnerrorcontainer);asItWas1 = asItWas1  ?? Rx("As It Was");harryStyles = harryStyles  ?? Rx("Harry Styles");time = time  ?? Rx("01:00");distance = distance  ?? Rx("65.1M");m = m  ?? Rx(ImageConstant.imgBookmarkPrimary24x24);id = id  ?? Rx(""); }

Rx<String>? asItWas;

Rx<String>? overflowMenu;

Rx<String>? asItWas1;

Rx<String>? harryStyles;

Rx<String>? time;

Rx<String>? distance;

Rx<String>? m;

Rx<String>? id;

 }
