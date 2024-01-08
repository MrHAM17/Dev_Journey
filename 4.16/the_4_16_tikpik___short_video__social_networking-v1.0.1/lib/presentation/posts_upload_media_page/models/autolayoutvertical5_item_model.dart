import '../../../core/app_export.dart';/// This class is used in the [autolayoutvertical5_item_widget] screen.
class Autolayoutvertical5ItemModel {Autolayoutvertical5ItemModel({this.image, this.checkmark, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage121x121);checkmark = checkmark  ?? Rx(ImageConstant.imgCheckmarkPrimary);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? checkmark;

Rx<String>? id;

 }
