import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame6_item_model.dart';
import '../models/frame7_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/search_page/models/search_model.dart';
part 'search_state.dart';

final searchNotifier = StateNotifierProvider<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(SearchState(
    searchController: TextEditingController(),
    searchModelObj: SearchModel(frame6ItemList: [
      Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x8),
      Frame6ItemModel(
          unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x858x58),
      Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x81),
      Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x82),
      Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x83)
    ], frame7ItemList: [
      Frame7ItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod4,
          premiumWatch1: "Premium Watch"),
      Frame7ItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod458x58,
          premiumWatch1: "Blue shoes"),
      Frame7ItemModel(
          premiumWatch: ImageConstant.imgUnsplashJj0tls2rod41,
          premiumWatch1: "Jamdan Dress")
    ]),
  )),
);

/// A notifier that manages the state of a Search according to the event that is dispatched to it.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(SearchState state) : super(state) {}
}
