import '../../../core/app_export.dart';/// This class is used in the [golivetogether_item_widget] screen.
class GolivetogetherItemModel {GolivetogetherItemModel({this.chantalShelburne, this.chantalShelburne1, this.time, this.id, }) { chantalShelburne = chantalShelburne  ?? Rx(ImageConstant.imgEllipse12);chantalShelburne1 = chantalShelburne1  ?? Rx("Chantal Shelburne");time = time  ?? Rx("9 min ago");id = id  ?? Rx(""); }

Rx<String>? chantalShelburne;

Rx<String>? chantalShelburne1;

Rx<String>? time;

Rx<String>? id;

 }
