import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_17_housit___buyrentsell_property/presentation/product_tour_two_screen/models/product_tour_two_model.dart';part 'product_tour_two_event.dart';part 'product_tour_two_state.dart';/// A bloc that manages the state of a ProductTourTwo according to the event that is dispatched to it.
class ProductTourTwoBloc extends Bloc<ProductTourTwoEvent, ProductTourTwoState> {ProductTourTwoBloc(ProductTourTwoState initialState) : super(initialState) { on<ProductTourTwoInitialEvent>(_onInitialize); }

_onInitialize(ProductTourTwoInitialEvent event, Emitter<ProductTourTwoState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
