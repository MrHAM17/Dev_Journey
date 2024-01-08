import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_08_shopsie___e_commerce_app/presentation/product_discover_drawer_draweritem/models/product_discover_drawer_model.dart';
part 'product_discover_drawer_event.dart';
part 'product_discover_drawer_state.dart';

/// A bloc that manages the state of a ProductDiscoverDrawer according to the event that is dispatched to it.
class ProductDiscoverDrawerBloc
    extends Bloc<ProductDiscoverDrawerEvent, ProductDiscoverDrawerState> {
  ProductDiscoverDrawerBloc(ProductDiscoverDrawerState initialState)
      : super(initialState) {
    on<ProductDiscoverDrawerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductDiscoverDrawerInitialEvent event,
    Emitter<ProductDiscoverDrawerState> emit,
  ) async {}
}
