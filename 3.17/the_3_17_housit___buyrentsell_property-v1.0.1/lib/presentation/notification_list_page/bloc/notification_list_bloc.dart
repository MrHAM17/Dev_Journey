import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/category_item_model.dart';
import '../models/list_item_model.dart';
import '../models/samuelella_item_model.dart';
import 'package:the_3_17_housit___buyrentsell_property/presentation/notification_list_page/models/notification_list_model.dart';
part 'notification_list_event.dart';
part 'notification_list_state.dart';

/// A bloc that manages the state of a NotificationList according to the event that is dispatched to it.
class NotificationListBloc
    extends Bloc<NotificationListEvent, NotificationListState> {
  NotificationListBloc(NotificationListState initialState)
      : super(initialState) {
    on<NotificationListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationListInitialEvent event,
    Emitter<NotificationListState> emit,
  ) async {
    emit(state.copyWith(
        notificationListModelObj: state.notificationListModelObj?.copyWith(
      categoryItemList: fillCategoryItemList(),
      listItemList: fillListItemList(),
      samuelellaItemList: fillSamuelellaItemList(),
    )));
  }

  List<CategoryItemModel> fillCategoryItemList() {
    return [
      CategoryItemModel(all: "All"),
      CategoryItemModel(all: "Review"),
      CategoryItemModel(all: " Sold"),
      CategoryItemModel(all: "House")
    ];
  }

  List<ListItemModel> fillListItemList() {
    return [
      ListItemModel(
          emmettPerry: ImageConstant.imgShape50x50,
          emmettPerry1: "Emmett Perry",
          time: "10 mins ago")
    ];
  }

  List<SamuelellaItemModel> fillSamuelellaItemList() {
    return List.generate(1, (index) => SamuelellaItemModel());
  }
}
