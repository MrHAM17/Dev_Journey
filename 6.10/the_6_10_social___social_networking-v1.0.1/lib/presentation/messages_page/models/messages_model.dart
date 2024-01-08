// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'stories2_item_model.dart';
import 'messageslist_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {
  MessagesModel({
    this.stories2ItemList = const [],
    this.messageslistItemList = const [],
  }) {}

  List<Stories2ItemModel> stories2ItemList;

  List<MessageslistItemModel> messageslistItemList;

  MessagesModel copyWith({
    List<Stories2ItemModel>? stories2ItemList,
    List<MessageslistItemModel>? messageslistItemList,
  }) {
    return MessagesModel(
      stories2ItemList: stories2ItemList ?? this.stories2ItemList,
      messageslistItemList: messageslistItemList ?? this.messageslistItemList,
    );
  }

  @override
  List<Object?> get props => [stories2ItemList, messageslistItemList];
}
