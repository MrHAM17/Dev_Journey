import '../../../core/app_export.dart';
import 'stories1_item_model.dart';
import 'frame_item_model.dart';

class StoriesModel {
  List<Stories1ItemModel> stories1ItemList = [
    Stories1ItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
    Stories1ItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
    Stories1ItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
    Stories1ItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
    Stories1ItemModel(roy1: "Angeline")
  ];

  List<FrameItemModel> frameItemList = [
    FrameItemModel(
        lIVEWeTheFest: ImageConstant.img19144x147,
        blueLoyalParty: ImageConstant.img192,
        lIVEWeTheFest1: "LIVE - We The Fest",
        price: "19 : 00 | Forg Stadium",
        blueLoyalParty1: "Blue Loyal Party",
        price1: "19 : 35 | Latuna Beach")
  ];
}
