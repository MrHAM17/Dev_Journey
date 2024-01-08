import 'blue_item_model.dart';import '../../../core/app_export.dart';import 'products1_item_model.dart';import 'recomended_item_model.dart';class ProductDetailModel {List<BlueItemModel> blueItemList = List.generate(6,(index) => BlueItemModel());

List<Products1ItemModel> products1ItemList = [Products1ItemModel(productPicture:ImageConstant.imgProductPicture02),Products1ItemModel(productPicture:ImageConstant.imgProductPicture03),Products1ItemModel(productPicture:ImageConstant.imgProductPicture01)];

List<RecomendedItemModel> recomendedItemList = [RecomendedItemModel(image:ImageConstant.imgProductImage,fSNikeAirMax: "FS - Nike Air Max 270 React...",price: "299,43",price1: "534,33",offer: "24% Off"),RecomendedItemModel(image:ImageConstant.imgProductImage109x109,fSNikeAirMax: "FS - QUILTED MAXI CROS...",price: "299,43",price1: "534,33",offer: "24% Off"),RecomendedItemModel(image:ImageConstant.imgProductImage1,fSNikeAirMax: "FS - Nike Air Max 270 React...",price: "299,43",price1: "534,33",offer: "24% Off")];

 }
