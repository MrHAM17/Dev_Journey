// ignore_for_file: must_be_immutable

part of 'posts_add_sounds_tab_container_bloc.dart';

/// Represents the state of PostsAddSoundsTabContainer in the application.
class PostsAddSoundsTabContainerState extends Equatable {
  PostsAddSoundsTabContainerState({
    this.searchController,
    this.postsAddSoundsTabContainerModelObj,
  });

  TextEditingController? searchController;

  PostsAddSoundsTabContainerModel? postsAddSoundsTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        postsAddSoundsTabContainerModelObj,
      ];
  PostsAddSoundsTabContainerState copyWith({
    TextEditingController? searchController,
    PostsAddSoundsTabContainerModel? postsAddSoundsTabContainerModelObj,
  }) {
    return PostsAddSoundsTabContainerState(
      searchController: searchController ?? this.searchController,
      postsAddSoundsTabContainerModelObj: postsAddSoundsTabContainerModelObj ??
          this.postsAddSoundsTabContainerModelObj,
    );
  }
}
