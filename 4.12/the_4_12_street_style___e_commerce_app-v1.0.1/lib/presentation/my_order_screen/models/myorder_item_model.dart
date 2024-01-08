import '../../../core/app_export.dart';

/// This class is used in the [myorder_item_widget] screen.
class MyorderItemModel {
  MyorderItemModel({
    this.x,
    this.vERTLUNEBoyfriend,
    this.yellowSizeCounter,
    this.id,
  }) {
    x = x ?? Rx(ImageConstant.imgRectangle9237x175);
    vERTLUNEBoyfriend = vERTLUNEBoyfriend ?? Rx("VERTLUNE\nBoyfriend Tee");
    yellowSizeCounter = yellowSizeCounter ?? Rx("Yellow\nSize 8");
    id = id ?? Rx("");
  }

  Rx<String>? x;

  Rx<String>? vERTLUNEBoyfriend;

  Rx<String>? yellowSizeCounter;

  Rx<String>? id;
}
