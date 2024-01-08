import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/models/total_likes_model.dart';
part 'total_likes_state.dart';

final totalLikesNotifier =
    StateNotifierProvider<TotalLikesNotifier, TotalLikesState>(
  (ref) => TotalLikesNotifier(TotalLikesState(
    totalLikesModelObj: TotalLikesModel(),
  )),
);

/// A notifier that manages the state of a TotalLikes according to the event that is dispatched to it.
class TotalLikesNotifier extends StateNotifier<TotalLikesState> {
  TotalLikesNotifier(TotalLikesState state) : super(state) {}
}
