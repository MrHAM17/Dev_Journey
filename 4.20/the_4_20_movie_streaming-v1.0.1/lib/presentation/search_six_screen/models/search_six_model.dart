import '../../../core/app_export.dart';
import 'movies7_item_model.dart';
import 'movies8_item_model.dart';
import 'movies9_item_model.dart';

/// This class defines the variables used in the [search_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSixModel {
  Rx<List<Movies7ItemModel>> movies7ItemList = Rx([
    Movies7ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    Movies7ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    Movies7ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs)
  ]);

  Rx<List<Movies8ItemModel>> movies8ItemList = Rx([
    Movies8ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    Movies8ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    Movies8ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs)
  ]);

  Rx<List<Movies9ItemModel>> movies9ItemList = Rx([
    Movies9ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    Movies9ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs)
  ]);
}
