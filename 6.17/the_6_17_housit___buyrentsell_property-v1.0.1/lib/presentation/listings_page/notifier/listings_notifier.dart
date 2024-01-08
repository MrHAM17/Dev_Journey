import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listings_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/listings_page/models/listings_model.dart';
part 'listings_state.dart';

final listingsNotifier = StateNotifierProvider<ListingsNotifier, ListingsState>(
  (ref) => ListingsNotifier(ListingsState(
    listingsModelObj: ListingsModel(listingsItemList: [
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape35,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Fairview Apartment",
          text: "4.2",
          jakartaIndonesia: "Jakarta, Indonesia"),
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape36,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Shoolview House",
          text: "4.2",
          jakartaIndonesia: "Jakarta, Indonesia"),
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape35,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Fairview Apartment"),
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape36,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Shoolview House")
    ]),
  )),
);

/// A notifier that manages the state of a Listings according to the event that is dispatched to it.
class ListingsNotifier extends StateNotifier<ListingsState> {
  ListingsNotifier(ListingsState state) : super(state) {}
}
