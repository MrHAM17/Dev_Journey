import '../../../core/app_export.dart';

/// This class is used in the [frame1_item_widget] screen.
class Frame1ItemModel {
  Frame1ItemModel({
    this.image,
    this.doctorStrange,
    this.fifteenThousandThirtyFive,
    this.zipcode,
    this.lightBulb,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle6;
    doctorStrange =
        doctorStrange ?? "Doctor strange :  In The Multiverse of Madness";
    fifteenThousandThirtyFive = fifteenThousandThirtyFive ?? "1:50:35";
    zipcode = zipcode ?? "2021";
    lightBulb = lightBulb ?? ImageConstant.imgRectangle9;
    id = id ?? "";
  }

  String? image;

  String? doctorStrange;

  String? fifteenThousandThirtyFive;

  String? zipcode;

  String? lightBulb;

  String? id;
}
