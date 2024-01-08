import '../../../core/app_export.dart';/// This class is used in the [frame1_item_widget] screen.
class Frame1ItemModel {Frame1ItemModel({this.theJordanHarb, this.billSullivan, this.id, }) { theJordanHarb = theJordanHarb  ?? Rx(ImageConstant.imgImage31);billSullivan = billSullivan  ?? Rx("The Jordan Harb...");id = id  ?? Rx(""); }

Rx<String>? theJordanHarb;

Rx<String>? billSullivan;

Rx<String>? id;

 }
