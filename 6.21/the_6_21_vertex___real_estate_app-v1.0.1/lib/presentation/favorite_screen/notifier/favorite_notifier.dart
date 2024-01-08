import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/favorite_screen/models/favorite_model.dart';part 'favorite_state.dart';final favoriteNotifier = StateNotifierProvider<FavoriteNotifier, FavoriteState>((ref) => FavoriteNotifier(FavoriteState(favoriteModelObj: FavoriteModel())));
/// A notifier that manages the state of a Favorite according to the event that is dispatched to it.
class FavoriteNotifier extends StateNotifier<FavoriteState> {FavoriteNotifier(FavoriteState state) : super(state);

 }
