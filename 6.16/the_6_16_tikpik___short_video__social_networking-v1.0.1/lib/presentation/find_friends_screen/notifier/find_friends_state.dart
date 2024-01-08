// ignore_for_file: must_be_immutable

part of 'find_friends_notifier.dart';

/// Represents the state of FindFriends in the application.
class FindFriendsState extends Equatable {
  FindFriendsState({
    this.searchController,
    this.findFriendsModelObj,
  });

  TextEditingController? searchController;

  FindFriendsModel? findFriendsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        findFriendsModelObj,
      ];

  FindFriendsState copyWith({
    TextEditingController? searchController,
    FindFriendsModel? findFriendsModelObj,
  }) {
    return FindFriendsState(
      searchController: searchController ?? this.searchController,
      findFriendsModelObj: findFriendsModelObj ?? this.findFriendsModelObj,
    );
  }
}
