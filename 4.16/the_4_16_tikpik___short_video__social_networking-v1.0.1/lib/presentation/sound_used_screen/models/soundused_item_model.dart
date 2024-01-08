import '../../../core/app_export.dart';/// This class is used in the [soundused_item_widget] screen.
class SoundusedItemModel {SoundusedItemModel({this.image, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage200x121);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? id;

 }
