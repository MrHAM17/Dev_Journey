import '../../../core/app_export.dart';/// This class is used in the [artists_item_widget] screen.
class ArtistsItemModel {ArtistsItemModel({this.drDeath, this.artistsName, this.id, }) { drDeath = drDeath  ?? ImageConstant.imgImage34;artistsName = artistsName  ?? "Dr. Death";id = id  ?? ""; }

String? drDeath;

String? artistsName;

String? id;

 }