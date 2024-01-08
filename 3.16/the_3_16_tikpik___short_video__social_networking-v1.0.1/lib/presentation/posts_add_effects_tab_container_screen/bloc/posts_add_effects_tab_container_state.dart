// ignore_for_file: must_be_immutable

part of 'posts_add_effects_tab_container_bloc.dart';

/// Represents the state of PostsAddEffectsTabContainer in the application.
class PostsAddEffectsTabContainerState extends Equatable {
  PostsAddEffectsTabContainerState({this.postsAddEffectsTabContainerModelObj});

  PostsAddEffectsTabContainerModel? postsAddEffectsTabContainerModelObj;

  @override
  List<Object?> get props => [
        postsAddEffectsTabContainerModelObj,
      ];
  PostsAddEffectsTabContainerState copyWith(
      {PostsAddEffectsTabContainerModel? postsAddEffectsTabContainerModelObj}) {
    return PostsAddEffectsTabContainerState(
      postsAddEffectsTabContainerModelObj:
          postsAddEffectsTabContainerModelObj ??
              this.postsAddEffectsTabContainerModelObj,
    );
  }
}
