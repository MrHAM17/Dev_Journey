import '../../../core/app_export.dart';
import 'specials6_item_model.dart';
import 'io_item_model.dart';
import 'turnerhooch_item_model.dart';

class ExploreSevenModel {
  List<Specials6ItemModel> specials6ItemList = [
    Specials6ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
    Specials6ItemModel(
        drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
    Specials6ItemModel(
        drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
    Specials6ItemModel(
        drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
  ];

  List<IoItemModel> ioItemList = [
    IoItemModel(
        io: ImageConstant.imgThumbnailImage180x120,
        title: "IO",
        title1: "No Christmas For You"),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage7,
        title: "I Kill Giants",
        title1: "As long we fight back, we have…"),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage9,
        title: "Angel has Fallen",
        title1: "Sub-Title"),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage12,
        title: "Title",
        title1: "As long we fight …"),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage140x90,
        title: "Radioflash",
        title1: "We have More …"),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage28,
        title: "Captain Marvel",
        title1: "Nice One")
  ];

  List<TurnerhoochItemModel> turnerhoochItemList = [
    TurnerhoochItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1,
        title: "Turner & Hooch",
        title1: "Sub-Title"),
    TurnerhoochItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26,
        title: "Hellen",
        title1: "What a happy Family"),
    TurnerhoochItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24,
        title: "Child’s Play",
        title1: "Sub-Title"),
    TurnerhoochItemModel(
        title: "Yesterday ", title1: "Everyone in the world has forgotten")
  ];
}
