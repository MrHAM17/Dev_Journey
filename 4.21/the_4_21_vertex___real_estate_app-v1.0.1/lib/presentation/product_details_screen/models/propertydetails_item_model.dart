import '../../../core/app_export.dart';/// This class is used in the [propertydetails_item_widget] screen.
class PropertydetailsItemModel {PropertydetailsItemModel({this.icon, this.bathroom, this.roomsCounter, this.id, }) { icon = icon  ?? Rx(ImageConstant.imgIconGray300);bathroom = bathroom  ?? Rx("Bathroom");roomsCounter = roomsCounter  ?? Rx("2 Rooms");id = id  ?? Rx(""); }

Rx<String>? icon;

Rx<String>? bathroom;

Rx<String>? roomsCounter;

Rx<String>? id;

 }
