import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discover_item_model.dart';
import 'package:the_3_12_street_style___e_commerce_app/presentation/discover_screen/models/discover_model.dart';
part 'discover_event.dart';
part 'discover_state.dart';

/// A bloc that manages the state of a Discover according to the event that is dispatched to it.
class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc(DiscoverState initialState) : super(initialState) {
    on<DiscoverInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscoverInitialEvent event,
    Emitter<DiscoverState> emit,
  ) async {
    emit(state.copyWith(
        discoverModelObj: state.discoverModelObj
            ?.copyWith(discoverItemList: fillDiscoverItemList())));
  }

  List<DiscoverItemModel> fillDiscoverItemList() {
    return [
      DiscoverItemModel(shirtSleeve: ImageConstant.imgImage2),
      DiscoverItemModel(shirtSleeve: ImageConstant.imgImage3)
    ];
  }
}
