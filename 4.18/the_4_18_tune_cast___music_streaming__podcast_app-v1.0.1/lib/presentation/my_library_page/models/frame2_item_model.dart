import '../../../core/app_export.dart';/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {Frame2ItemModel({this.theJordanHarb, this.billSullivan, this.id, }) { theJordanHarb = theJordanHarb  ?? Rx(ImageConstant.imgImage31);billSullivan = billSullivan  ?? Rx("The Jordan Harb...");id = id  ?? Rx(""); }

Rx<String>? theJordanHarb;

Rx<String>? billSullivan;

Rx<String>? id;

 }
