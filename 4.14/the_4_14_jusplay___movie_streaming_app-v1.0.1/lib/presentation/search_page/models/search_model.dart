import 'frame3_item_model.dart';
import '../../../core/app_export.dart';
import 'frame5_item_model.dart';
import 'frame6_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<Frame3ItemModel>> frame3ItemList =
      Rx(List.generate(4, (index) => Frame3ItemModel()));

  Rx<List<Frame5ItemModel>> frame5ItemList = Rx([
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12078135x98.obs),
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12079.obs),
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12080.obs),
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12081.obs)
  ]);

  Rx<List<Frame6ItemModel>> frame6ItemList = Rx([
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12082.obs),
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12083.obs),
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12084.obs),
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12085.obs)
  ]);
}
