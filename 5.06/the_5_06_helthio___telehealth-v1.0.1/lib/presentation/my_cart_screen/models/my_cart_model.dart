import '../../../core/app_export.dart';
import 'durgs_item_model.dart';

class MyCartModel {
  List<DurgsItemModel> durgsItemList = [
    DurgsItemModel(
        oBHCombi: ImageConstant.imgHealthvitLLys50x50,
        oBHCombi1: "OBH Combi",
        measurement: "75ml",
        one: "1",
        price: "9.99"),
    DurgsItemModel(
        oBHCombi: ImageConstant.imgCalciumLLysin50x50,
        oBHCombi1: "Panadol",
        measurement: "20pcs",
        one: "2",
        price: "15.99")
  ];
}
