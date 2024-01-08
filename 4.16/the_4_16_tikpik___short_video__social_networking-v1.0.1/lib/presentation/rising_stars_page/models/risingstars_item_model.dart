import '../../../core/app_export.dart';/// This class is used in the [risingstars_item_widget] screen.
class RisingstarsItemModel {RisingstarsItemModel({this.rochelFoose, this.rochelFoose1, this.distance, this.id, }) { rochelFoose = rochelFoose  ?? Rx(ImageConstant.imgEllipse4);rochelFoose1 = rochelFoose1  ?? Rx("Rochel Foose");distance = distance  ?? Rx("55.65M");id = id  ?? Rx(""); }

Rx<String>? rochelFoose;

Rx<String>? rochelFoose1;

Rx<String>? distance;

Rx<String>? id;

 }
