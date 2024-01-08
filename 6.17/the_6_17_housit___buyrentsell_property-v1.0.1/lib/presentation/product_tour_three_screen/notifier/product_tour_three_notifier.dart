import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/product_tour_three_screen/models/product_tour_three_model.dart';part 'product_tour_three_state.dart';final productTourThreeNotifier = StateNotifierProvider<ProductTourThreeNotifier, ProductTourThreeState>((ref) => ProductTourThreeNotifier(ProductTourThreeState(productTourThreeModelObj: ProductTourThreeModel())));
/// A notifier that manages the state of a ProductTourThree according to the event that is dispatched to it.
class ProductTourThreeNotifier extends StateNotifier<ProductTourThreeState> {ProductTourThreeNotifier(ProductTourThreeState state) : super(state);

 }
