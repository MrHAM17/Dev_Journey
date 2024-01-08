import '../../../core/app_export.dart';/// This class is used in the [followback1_item_widget] screen.
class Followback1ItemModel {Followback1ItemModel({this.clintonMcclure, this.clintonMcclure1, this.startedfollowingyou, this.id, }) { clintonMcclure = clintonMcclure  ?? Rx(ImageConstant.imgEllipse21);clintonMcclure1 = clintonMcclure1  ?? Rx("Clinton Mcclure");startedfollowingyou = startedfollowingyou  ?? Rx("Started following you");id = id  ?? Rx(""); }

Rx<String>? clintonMcclure;

Rx<String>? clintonMcclure1;

Rx<String>? startedfollowingyou;

Rx<String>? id;

 }
