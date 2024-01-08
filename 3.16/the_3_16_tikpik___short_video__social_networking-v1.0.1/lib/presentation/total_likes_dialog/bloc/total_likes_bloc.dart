import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/models/total_likes_model.dart';
part 'total_likes_event.dart';
part 'total_likes_state.dart';

/// A bloc that manages the state of a TotalLikes according to the event that is dispatched to it.
class TotalLikesBloc extends Bloc<TotalLikesEvent, TotalLikesState> {
  TotalLikesBloc(TotalLikesState initialState) : super(initialState) {
    on<TotalLikesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TotalLikesInitialEvent event,
    Emitter<TotalLikesState> emit,
  ) async {}
}
