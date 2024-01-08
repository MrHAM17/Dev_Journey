import '../../../core/app_export.dart';/// This class is used in the [viewers_item_widget] screen.
class ViewersItemModel {ViewersItemModel({this.darylNehls, this.id, }) { darylNehls = darylNehls  ?? Rx("Daryl Nehls");id = id  ?? Rx(""); }

Rx<String>? darylNehls;

Rx<String>? id;

 }
