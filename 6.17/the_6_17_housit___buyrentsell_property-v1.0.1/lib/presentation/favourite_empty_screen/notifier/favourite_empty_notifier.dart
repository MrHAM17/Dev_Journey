import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/favourite_empty_screen/models/favourite_empty_model.dart';
part 'favourite_empty_state.dart';

final favouriteEmptyNotifier =
    StateNotifierProvider<FavouriteEmptyNotifier, FavouriteEmptyState>(
  (ref) => FavouriteEmptyNotifier(FavouriteEmptyState(
    favouriteEmptyModelObj: FavouriteEmptyModel(),
  )),
);

/// A notifier that manages the state of a FavouriteEmpty according to the event that is dispatched to it.
class FavouriteEmptyNotifier extends StateNotifier<FavouriteEmptyState> {
  FavouriteEmptyNotifier(FavouriteEmptyState state) : super(state) {}
}
