import '../../../core/app_export.dart';/// This class is used in the [layout25_item_widget] screen.
class Layout25ItemModel {Layout25ItemModel({this.hospitalCounter, this.id, }) { hospitalCounter = hospitalCounter  ?? Rx("2 Hospital");id = id  ?? Rx(""); }

Rx<String>? hospitalCounter;

Rx<String>? id;

 }
