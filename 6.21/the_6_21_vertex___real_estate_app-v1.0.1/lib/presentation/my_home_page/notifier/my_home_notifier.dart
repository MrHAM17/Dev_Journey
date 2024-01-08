import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/list_item_model.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/my_home_page/models/my_home_model.dart';part 'my_home_state.dart';final myHomeNotifier = StateNotifierProvider<MyHomeNotifier, MyHomeState>((ref) => MyHomeNotifier(MyHomeState(myHomeModelObj: MyHomeModel(listItemList: [ListItemModel(primaryApartment: "Primary Apartment", three: "3", two: "2", price: "1,600 - 1,800 "), ListItemModel(primaryApartment: "Primary Apartment", price: "1,600 - 1,800 "), ListItemModel(primaryApartment: "Primary Apartment", price: "1,600 - 1,800 ")]))));
/// A notifier that manages the state of a MyHome according to the event that is dispatched to it.
class MyHomeNotifier extends StateNotifier<MyHomeState> {MyHomeNotifier(MyHomeState state) : super(state);

 }
