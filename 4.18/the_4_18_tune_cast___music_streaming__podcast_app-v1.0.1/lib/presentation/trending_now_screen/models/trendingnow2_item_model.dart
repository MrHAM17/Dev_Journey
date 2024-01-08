import '../../../core/app_export.dart';/// This class is used in the [trendingnow2_item_widget] screen.
class Trendingnow2ItemModel {Trendingnow2ItemModel({this.image, this.loremIpsumDolor, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage188x184);loremIpsumDolor = loremIpsumDolor  ?? Rx("Shades of Love - Ania Szarmach");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? loremIpsumDolor;

Rx<String>? id;

 }
