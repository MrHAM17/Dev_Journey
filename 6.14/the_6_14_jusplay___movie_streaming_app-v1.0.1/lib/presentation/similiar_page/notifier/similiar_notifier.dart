import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/similiar_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/similiar_page/models/similiar_model.dart';
part 'similiar_state.dart';

final similiarNotifier = StateNotifierProvider<SimiliarNotifier, SimiliarState>(
    (ref) => SimiliarNotifier(SimiliarState(
            similiarModelObj: SimiliarModel(similiarItemList: [
          SimiliarItemModel(
              image: ImageConstant.imgRectangle12078,
              image1: ImageConstant.imgRectangle12078140x102,
              image2: ImageConstant.imgRectangle120781)
        ]))));

/// A notifier that manages the state of a Similiar according to the event that is dispatched to it.
class SimiliarNotifier extends StateNotifier<SimiliarState> {
  SimiliarNotifier(SimiliarState state) : super(state);
}
