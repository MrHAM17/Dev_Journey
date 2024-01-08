import '../../../core/app_export.dart';/// This class is used in the [propertydetails_item_widget] screen.
class PropertydetailsItemModel {PropertydetailsItemModel({this.icon, this.bathroom, this.roomsCounter, this.id, }) { icon = icon  ?? ImageConstant.imgIconGray300;bathroom = bathroom  ?? "Bathroom";roomsCounter = roomsCounter  ?? "2 Rooms";id = id  ?? ""; }

String? icon;

String? bathroom;

String? roomsCounter;

String? id;

 }
