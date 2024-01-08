import '../../../core/app_export.dart';/// This class is used in the [category_item_widget] screen.
class CategoryItemModel {CategoryItemModel({this.all, this.id, }) { all = all  ?? Rx("All");id = id  ?? Rx(""); }

Rx<String>? all;

Rx<String>? id;

 }
