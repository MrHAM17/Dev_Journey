import 'framefiftythree_item_model.dart';
import '../../../core/app_export.dart';
import 'movies1_item_model.dart';

class DetailPageNineModel {
  List<FramefiftythreeItemModel> framefiftythreeItemList =
      List.generate(4, (index) => FramefiftythreeItemModel());

  List<Movies1ItemModel> movies1ItemList = [
    Movies1ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage180x120,
        title: "IO: Netflix",
        title1: "In near future we must save earth"),
    Movies1ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage7,
        title: "I Kill Giants",
        title1: "No more Surrender this time"),
    Movies1ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage9,
        title: "Angel has Fallen",
        title1: "Loyalty under everything")
  ];
}
