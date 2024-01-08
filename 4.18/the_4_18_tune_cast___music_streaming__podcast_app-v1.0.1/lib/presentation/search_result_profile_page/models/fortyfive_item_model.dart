import '../../../core/app_export.dart';/// This class is used in the [fortyfive_item_widget] screen.
class FortyfiveItemModel {FortyfiveItemModel({this.jennyWilson, this.artistName, this.followersCounter, this.id, }) { jennyWilson = jennyWilson  ?? Rx(ImageConstant.imgImage78);artistName = artistName  ?? Rx("Jenny Wilson");followersCounter = followersCounter  ?? Rx("9,489 Followers");id = id  ?? Rx(""); }

Rx<String>? jennyWilson;

Rx<String>? artistName;

Rx<String>? followersCounter;

Rx<String>? id;

 }
