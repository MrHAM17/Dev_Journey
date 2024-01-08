import '../../../core/app_export.dart';
import 'popularproduct_item_model.dart';
import 'productonsale_item_model.dart';

class PharmacyModel {
  List<PopularproductItemModel> popularproductItemList = [
    PopularproductItemModel(
        panadol: ImageConstant.imgEf58faa9a71e47e,
        panadol1: "Panadol",
        pcs: "20pcs",
        price: "15.99",
        close: ImageConstant.imgCloseWhiteA700),
    PopularproductItemModel(
        panadol1: "Bodrex Herbal",
        pcs: "100ml",
        price: "7.99",
        close: ImageConstant.imgCloseWhiteA700),
    PopularproductItemModel(panadol1: "Konidin", pcs: "3pcs", price: "5.99")
  ];

  List<ProductonsaleItemModel> productonsaleItemList = [
    ProductonsaleItemModel(
        oBHCombi: ImageConstant.imgCalciumLLysin,
        oBHCombi1: "OBH Combi",
        measurement: "75ml",
        price: "9.99",
        price1: "10.99",
        close: ImageConstant.imgCloseWhiteA700),
    ProductonsaleItemModel(
        oBHCombi1: "Betadine",
        measurement: "50ml",
        close: ImageConstant.imgCloseWhiteA700)
  ];
}
