import '../../../core/app_export.dart';/// This class is used in the [followartists_item_widget] screen.
class FollowartistsItemModel {FollowartistsItemModel({this.theWeeknd, this.artistName, this.id, }) { theWeeknd = theWeeknd  ?? ImageConstant.imgEllipse1;artistName = artistName  ?? "The Weeknd";id = id  ?? ""; }

String? theWeeknd;

String? artistName;

String? id;

 }
