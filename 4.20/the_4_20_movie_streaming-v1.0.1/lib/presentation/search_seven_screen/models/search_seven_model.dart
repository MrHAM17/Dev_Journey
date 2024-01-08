import '../../../core/app_export.dart';
import 'searchseven_item_model.dart';
import 'frameseventynine_item_model.dart';

/// This class defines the variables used in the [search_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSevenModel {
  Rx<List<SearchsevenItemModel>> searchsevenItemList = Rx([
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikatta".obs),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage25.obs,
        title: "The Brave".obs),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage26.obs, title: "Helen".obs),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage27.obs, title: "A1".obs),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage28.obs,
        title: "Captain Marvel".obs),
    SearchsevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs)
  ]);

  Rx<List<FrameseventynineItemModel>> frameseventynineItemList =
      Rx(List.generate(4, (index) => FrameseventynineItemModel()));
}
