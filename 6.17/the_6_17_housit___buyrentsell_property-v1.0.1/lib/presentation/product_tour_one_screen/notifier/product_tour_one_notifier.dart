import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/product_tour_one_screen/models/product_tour_one_model.dart';part 'product_tour_one_state.dart';final productTourOneNotifier = StateNotifierProvider<ProductTourOneNotifier, ProductTourOneState>((ref) => ProductTourOneNotifier(ProductTourOneState(productTourOneModelObj: ProductTourOneModel())));
/// A notifier that manages the state of a ProductTourOne according to the event that is dispatched to it.
class ProductTourOneNotifier extends StateNotifier<ProductTourOneState> {ProductTourOneNotifier(ProductTourOneState state) : super(state);

 }
