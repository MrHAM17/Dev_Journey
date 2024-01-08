import '../../../core/app_export.dart';/// This class is used in the [trendingnow_item_widget] screen.
class TrendingnowItemModel {TrendingnowItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
