import 'frame3_item_model.dart';
import '../../../core/app_export.dart';
import 'frame5_item_model.dart';
import 'frame6_item_model.dart';

class SearchModel {
  List<Frame3ItemModel> frame3ItemList =
      List.generate(4, (index) => Frame3ItemModel());

  List<Frame5ItemModel> frame5ItemList = [
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12078135x98),
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12079),
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12080),
    Frame5ItemModel(rectangle: ImageConstant.imgRectangle12081)
  ];

  List<Frame6ItemModel> frame6ItemList = [
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12082),
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12083),
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12084),
    Frame6ItemModel(rectangle: ImageConstant.imgRectangle12085)
  ];
}
