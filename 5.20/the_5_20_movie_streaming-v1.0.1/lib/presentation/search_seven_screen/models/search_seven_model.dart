import '../../../core/app_export.dart';
import 'searchseven_item_model.dart';
import 'frameseventynine_item_model.dart';

class SearchSevenModel {
  List<SearchsevenItemModel> searchsevenItemList = [
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage20, title: "Jallikatta"),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage25, title: "The Brave"),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage26, title: "Helen"),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage27, title: "A1"),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage28, title: "Captain Marvel"),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage24, title: "Child’s Play")
  ];

  List<FrameseventynineItemModel> frameseventynineItemList =
      List.generate(4, (index) => FrameseventynineItemModel());
}
