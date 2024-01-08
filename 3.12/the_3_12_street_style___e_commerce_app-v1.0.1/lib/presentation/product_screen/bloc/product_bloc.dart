import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/twelve_item_model.dart';
import 'package:the_3_12_street_style___e_commerce_app/presentation/product_screen/models/product_model.dart';
part 'product_event.dart';
part 'product_state.dart';

/// A bloc that manages the state of a Product according to the event that is dispatched to it.
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(ProductState initialState) : super(initialState) {
    on<ProductInitialEvent>(_onInitialize);
  }

  List<TwelveItemModel> fillTwelveItemList() {
    return [
      TwelveItemModel(image: ImageConstant.imgRectangle14),
      TwelveItemModel(image: ImageConstant.imgRectangle14)
    ];
  }

  _onInitialize(
    ProductInitialEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        productModelObj: state.productModelObj
            ?.copyWith(twelveItemList: fillTwelveItemList())));
    NavigatorService.pushNamed(
      AppRoutes.myOrderScreen,
    );
  }
}
