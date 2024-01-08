import '../../../core/app_export.dart';

/// This class is used in the [chat_item_widget] screen.
class ChatItemModel {
  ChatItemModel({
    this.drMarcusHorizon,
    this.drMarcusHorizon1,
    this.iDonTHaveAny,
    this.time,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? Rx(ImageConstant.imgProfileThumbnail);
    drMarcusHorizon1 = drMarcusHorizon1 ?? Rx("Dr. Marcus Horizon");
    iDonTHaveAny =
        iDonTHaveAny ?? Rx("I don,t have any fever, but headchace...");
    time = time ?? Rx("10.24");
    id = id ?? Rx("");
  }

  Rx<String>? drMarcusHorizon;

  Rx<String>? drMarcusHorizon1;

  Rx<String>? iDonTHaveAny;

  Rx<String>? time;

  Rx<String>? id;
}
