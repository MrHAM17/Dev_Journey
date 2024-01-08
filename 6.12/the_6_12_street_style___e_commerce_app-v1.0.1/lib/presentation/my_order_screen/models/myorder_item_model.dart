import '../../../core/app_export.dart';

/// This class is used in the [myorder_item_widget] screen.
class MyorderItemModel {
  MyorderItemModel({
    this.x,
    this.vERTLUNEBoyfriend,
    this.yellowSizeCounter,
    this.id,
  }) {
    x = x ?? ImageConstant.imgRectangle9237x175;
    vERTLUNEBoyfriend = vERTLUNEBoyfriend ?? "VERTLUNE\nBoyfriend Tee";
    yellowSizeCounter = yellowSizeCounter ?? "Yellow\nSize 8";
    id = id ?? "";
  }

  String? x;

  String? vERTLUNEBoyfriend;

  String? yellowSizeCounter;

  String? id;
}
