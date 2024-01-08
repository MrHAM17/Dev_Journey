import '../../../core/app_export.dart';/// This class is used in the [followback_item_widget] screen.
class FollowbackItemModel {FollowbackItemModel({this.charoletteHanlin, this.charoletteHanlin1, this.information, this.charoletteHanlin2, this.id, }) { charoletteHanlin = charoletteHanlin  ?? Rx(ImageConstant.imgEllipse14);charoletteHanlin1 = charoletteHanlin1  ?? Rx("Charolette Hanlin");information = information  ?? Rx("Leave a comment on your video");charoletteHanlin2 = charoletteHanlin2  ?? Rx(ImageConstant.imgImage60x60);id = id  ?? Rx(""); }

Rx<String>? charoletteHanlin;

Rx<String>? charoletteHanlin1;

Rx<String>? information;

Rx<String>? charoletteHanlin2;

Rx<String>? id;

 }
