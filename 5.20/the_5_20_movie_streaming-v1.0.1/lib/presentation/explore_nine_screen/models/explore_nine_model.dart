import '../../../core/app_export.dart';
import 'specials8_item_model.dart';
import 'explorenine_item_model.dart';

class ExploreNineModel {
  List<Specials8ItemModel> specials8ItemList = [
    Specials8ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
    Specials8ItemModel(
        drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
    Specials8ItemModel(
        drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
    Specials8ItemModel(
        drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
  ];

  List<ExplorenineItemModel> explorenineItemList = [
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage180x120,
        title: "IO",
        title1: "No Christmas For You"),
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage7,
        title: "I Kill Giants",
        title1: "As long we fight back, we have…"),
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage9,
        title: "Angel has Fallen",
        title1: "Sub-Title"),
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage12,
        title: "Title",
        title1: "As long we fight …")
  ];
}
