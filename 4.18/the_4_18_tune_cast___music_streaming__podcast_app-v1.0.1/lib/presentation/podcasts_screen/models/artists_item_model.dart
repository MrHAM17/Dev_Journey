import '../../../core/app_export.dart';/// This class is used in the [artists_item_widget] screen.
class ArtistsItemModel {ArtistsItemModel({this.drDeath, this.artistsName, this.id, }) { drDeath = drDeath  ?? Rx(ImageConstant.imgImage34);artistsName = artistsName  ?? Rx("Dr. Death");id = id  ?? Rx(""); }

Rx<String>? drDeath;

Rx<String>? artistsName;

Rx<String>? id;

 }
