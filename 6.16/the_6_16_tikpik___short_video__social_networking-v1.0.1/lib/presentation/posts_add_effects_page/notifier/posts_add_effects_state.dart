// ignore_for_file: must_be_immutable

part of 'posts_add_effects_notifier.dart';

/// Represents the state of PostsAddEffects in the application.
class PostsAddEffectsState extends Equatable {
  PostsAddEffectsState({this.postsAddEffectsModelObj});

  PostsAddEffectsModel? postsAddEffectsModelObj;

  @override
  List<Object?> get props => [
        postsAddEffectsModelObj,
      ];

  PostsAddEffectsState copyWith(
      {PostsAddEffectsModel? postsAddEffectsModelObj}) {
    return PostsAddEffectsState(
      postsAddEffectsModelObj:
          postsAddEffectsModelObj ?? this.postsAddEffectsModelObj,
    );
  }
}
