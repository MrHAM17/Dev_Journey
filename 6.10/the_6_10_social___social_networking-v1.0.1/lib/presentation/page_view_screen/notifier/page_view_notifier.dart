import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/conversions_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/page_view_screen/models/page_view_model.dart';
part 'page_view_state.dart';

final pageViewNotifier = StateNotifierProvider<PageViewNotifier, PageViewState>(
    (ref) => PageViewNotifier(PageViewState(
        commentController: TextEditingController(),
        pageViewModelObj: PageViewModel(
            conversionsItemList:
                List.generate(4, (index) => ConversionsItemModel())))));

/// A notifier that manages the state of a PageView according to the event that is dispatched to it.
class PageViewNotifier extends StateNotifier<PageViewState> {
  PageViewNotifier(PageViewState state) : super(state);
}
