import '../../../core/app_export.dart';
import 'archivedmessage_item_model.dart';

class ArchivedMessageModel {
  List<ArchivedmessageItemModel> archivedmessageItemList = [
    ArchivedmessageItemModel(
        image: ImageConstant.imgPlay,
        image1: ImageConstant.imgImage28x28,
        more: "+9",
        username: "Close Friends",
        message: "Thank you for sharing",
        time: "3:03pm",
        notifications: "1"),
    ArchivedmessageItemModel(
        image: ImageConstant.imgPlay,
        image1: ImageConstant.imgImage11,
        more: "+9",
        username: "Close Friends",
        message: "Thank you for sharing"),
    ArchivedmessageItemModel(
        username: "Close Friends",
        message: "Thank you for sharing",
        time: "3:03pm",
        notifications: "1")
  ];
}
