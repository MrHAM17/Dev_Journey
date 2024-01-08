import '../../../core/app_export.dart';/// This class is used in the [suggested_item_widget] screen.
class SuggestedItemModel {SuggestedItemModel({this.rayfordChenail, this.rayfordChenail1, this.price, this.id, }) { rayfordChenail = rayfordChenail  ?? Rx(ImageConstant.imgEllipse3);rayfordChenail1 = rayfordChenail1  ?? Rx("Rayford Chenail");price = price  ?? Rx("rayfordchenail | 42.9K");id = id  ?? Rx(""); }

Rx<String>? rayfordChenail;

Rx<String>? rayfordChenail1;

Rx<String>? price;

Rx<String>? id;

 }
