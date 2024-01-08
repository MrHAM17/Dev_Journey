import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/product_tour_two_screen/models/product_tour_two_model.dart';part 'product_tour_two_state.dart';final productTourTwoNotifier = StateNotifierProvider<ProductTourTwoNotifier, ProductTourTwoState>((ref) => ProductTourTwoNotifier(ProductTourTwoState(productTourTwoModelObj: ProductTourTwoModel())));
/// A notifier that manages the state of a ProductTourTwo according to the event that is dispatched to it.
class ProductTourTwoNotifier extends StateNotifier<ProductTourTwoState> {ProductTourTwoNotifier(ProductTourTwoState state) : super(state);

 }
