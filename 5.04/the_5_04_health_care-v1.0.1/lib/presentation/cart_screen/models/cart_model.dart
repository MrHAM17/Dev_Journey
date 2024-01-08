import '../../../core/app_export.dart';
import 'drugs2_item_model.dart';

class CartModel {
  List<Drugs2ItemModel> drugs2ItemList = [
    Drugs2ItemModel(
        oBHCombi: ImageConstant.imgDrugThumbnail72x72,
        oBHCombi1: "OBH Combi",
        measurement: "75ml",
        counter: "1",
        price: "9.99"),
    Drugs2ItemModel(
        oBHCombi: ImageConstant.imgDrugThumbnail4,
        oBHCombi1: "Panadol",
        measurement: "20pcs",
        counter: "1",
        price: "9.99")
  ];
}
