import '../../../core/app_export.dart';
import 'specials_item_model.dart';
import 'specials1_item_model.dart';
import 'specials2_item_model.dart';
import 'specials3_item_model.dart';
import 'specials4_item_model.dart';
import 'specials5_item_model.dart';

class DashboardModel {
  List<SpecialsItemModel> specialsItemList = [
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage,
        title: "The Perfection"),
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage140x90,
        title: "Radio Flash"),
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage1,
        title: "Turner & Hooch"),
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage2,
        title: "Stranger Things")
  ];

  List<Specials1ItemModel> specials1ItemList = [
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage3,
        title: "Jumanji The Next Level"),
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage4, title: "Cloud Atlas"),
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage5, title: "Charlie’s Angels"),
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage6, title: "Zombieland")
  ];

  List<Specials2ItemModel> specials2ItemList = [
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage7, title: "I Kill Giants"),
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage8, title: "Disney: Togo"),
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage9,
        title: "Angel has Fallen"),
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage10, title: "The Conjuring")
  ];

  List<Specials3ItemModel> specials3ItemList = [
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage11, title: "Lukas"),
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage12, title: "Dark PhoeniX"),
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage13, title: "Pirates of Caribean"),
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage6, title: "Zombieland")
  ];

  List<Specials4ItemModel> specials4ItemList = [
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
  ];

  List<Specials5ItemModel> specials5ItemList = [
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage,
        title: "The Perfection"),
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage140x90,
        title: "Radio Flash"),
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage1,
        title: "Turner & Hooch"),
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage2,
        title: "Stranger Things")
  ];
}
