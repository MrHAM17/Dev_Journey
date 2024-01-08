import '../../../core/app_export.dart';/// This class is used in the [data_item_widget] screen.
class DataItemModel {DataItemModel({this.bali, this.bali1, this.id, }) { bali = bali  ?? Rx(ImageConstant.imgShape174x144);bali1 = bali1  ?? Rx("Bali");id = id  ?? Rx(""); }

Rx<String>? bali;

Rx<String>? bali1;

Rx<String>? id;

 }
