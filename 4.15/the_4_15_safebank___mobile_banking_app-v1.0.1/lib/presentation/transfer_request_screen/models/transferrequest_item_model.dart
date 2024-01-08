import '../../../core/app_export.dart';

/// This class is used in the [transferrequest_item_widget] screen.
class TransferrequestItemModel {
  TransferrequestItemModel({
    this.zanderWiza,
    this.zanderWiza1,
    this.uIUXDesigner,
    this.id,
  }) {
    zanderWiza = zanderWiza ?? Rx(ImageConstant.imgRectangle63);
    zanderWiza1 = zanderWiza1 ?? Rx("Zander Wiza");
    uIUXDesigner = uIUXDesigner ?? Rx("UI/UX Designer");
    id = id ?? Rx("");
  }

  Rx<String>? zanderWiza;

  Rx<String>? zanderWiza1;

  Rx<String>? uIUXDesigner;

  Rx<String>? id;
}
