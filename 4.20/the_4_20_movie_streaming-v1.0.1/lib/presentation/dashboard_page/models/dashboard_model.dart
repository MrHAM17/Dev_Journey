import '../../../core/app_export.dart';
import 'specials_item_model.dart';
import 'specials1_item_model.dart';
import 'specials2_item_model.dart';
import 'specials3_item_model.dart';
import 'specials4_item_model.dart';
import 'specials5_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel {
  Rx<List<SpecialsItemModel>> specialsItemList = Rx([
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage.obs,
        title: "The Perfection".obs),
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Radio Flash".obs),
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs),
    SpecialsItemModel(
        thePerfection: ImageConstant.imgThumbnailImage2.obs,
        title: "Stranger Things".obs)
  ]);

  Rx<List<Specials1ItemModel>> specials1ItemList = Rx([
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage3.obs,
        title: "Jumanji The Next Level".obs),
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage4.obs, title: "Cloud Atlas".obs),
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage5.obs,
        title: "Charlie’s Angels".obs),
    Specials1ItemModel(
        image: ImageConstant.imgThumbnailImage6.obs, title: "Zombieland".obs)
  ]);

  Rx<List<Specials2ItemModel>> specials2ItemList = Rx([
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs),
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage8.obs,
        title: "Disney: Togo".obs),
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs),
    Specials2ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage10.obs,
        title: "The Conjuring".obs)
  ]);

  Rx<List<Specials3ItemModel>> specials3ItemList = Rx([
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage11.obs, title: "Lukas".obs),
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage12.obs,
        title: "Dark PhoeniX".obs),
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage13.obs,
        title: "Pirates of Caribean".obs),
    Specials3ItemModel(
        lukas: ImageConstant.imgThumbnailImage6.obs, title: "Zombieland".obs)
  ]);

  Rx<List<Specials4ItemModel>> specials4ItemList = Rx([
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90.obs, drama1: "Drama".obs),
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage14.obs, drama1: "Action".obs),
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage15.obs, drama1: "Thriller".obs),
    Specials4ItemModel(
        drama: ImageConstant.imgThumbnailImage16.obs, drama1: "Drama".obs)
  ]);

  Rx<List<Specials5ItemModel>> specials5ItemList = Rx([
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage.obs,
        title: "The Perfection".obs),
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Radio Flash".obs),
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs),
    Specials5ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage2.obs,
        title: "Stranger Things".obs)
  ]);
}
