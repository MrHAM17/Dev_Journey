import '../../../core/app_export.dart';/// This class is used in the [layout21_item_widget] screen.
class Layout21ItemModel {Layout21ItemModel({this.bedroom, this.text, this.id, }) { bedroom = bedroom  ?? Rx("Bedroom");text = text  ?? Rx("2");id = id  ?? Rx(""); }

Rx<String>? bedroom;

Rx<String>? text;

Rx<String>? id;

 }
