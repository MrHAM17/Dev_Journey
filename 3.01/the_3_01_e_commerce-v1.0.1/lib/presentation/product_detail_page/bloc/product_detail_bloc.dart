import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/blue_item_model.dart';import '../models/products1_item_model.dart';import '../models/recomended_item_model.dart';import 'package:the_3_01_e_commerce/presentation/product_detail_page/models/product_detail_model.dart';part 'product_detail_event.dart';part 'product_detail_state.dart';/// A bloc that manages the state of a ProductDetail according to the event that is dispatched to it.
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {ProductDetailBloc(ProductDetailState initialState) : super(initialState) { on<ProductDetailInitialEvent>(_onInitialize); }

_onInitialize(ProductDetailInitialEvent event, Emitter<ProductDetailState> emit, ) async  { emit(state.copyWith(productDetailModelObj: state.productDetailModelObj?.copyWith(blueItemList: fillBlueItemList(), products1ItemList: fillProducts1ItemList(), recomendedItemList: fillRecomendedItemList())));NavigatorService.pushNamed(AppRoutes.searchScreen, ); } 
List<BlueItemModel> fillBlueItemList() { return List.generate(6, (index) => BlueItemModel()); } 
List<Products1ItemModel> fillProducts1ItemList() { return [Products1ItemModel(productPicture: ImageConstant.imgProductPicture02), Products1ItemModel(productPicture: ImageConstant.imgProductPicture03), Products1ItemModel(productPicture: ImageConstant.imgProductPicture01)]; } 
List<RecomendedItemModel> fillRecomendedItemList() { return [RecomendedItemModel(image: ImageConstant.imgProductImage, fSNikeAirMax: "FS - Nike Air Max 270 React...", price: "299,43", price1: "534,33", offer: "24% Off"), RecomendedItemModel(image: ImageConstant.imgProductImage109x109, fSNikeAirMax: "FS - QUILTED MAXI CROS...", price: "299,43", price1: "534,33", offer: "24% Off"), RecomendedItemModel(image: ImageConstant.imgProductImage1, fSNikeAirMax: "FS - Nike Air Max 270 React...", price: "299,43", price1: "534,33", offer: "24% Off")]; } 
 }
