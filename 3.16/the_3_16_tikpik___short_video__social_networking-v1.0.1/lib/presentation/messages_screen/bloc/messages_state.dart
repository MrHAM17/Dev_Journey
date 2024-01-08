// ignore_for_file: must_be_immutable

part of 'messages_bloc.dart';

/// Represents the state of Messages in the application.
class MessagesState extends Equatable {
  MessagesState({
    this.searchController,
    this.messagesModelObj,
  });

  TextEditingController? searchController;

  MessagesModel? messagesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        messagesModelObj,
      ];
  MessagesState copyWith({
    TextEditingController? searchController,
    MessagesModel? messagesModelObj,
  }) {
    return MessagesState(
      searchController: searchController ?? this.searchController,
      messagesModelObj: messagesModelObj ?? this.messagesModelObj,
    );
  }
}
