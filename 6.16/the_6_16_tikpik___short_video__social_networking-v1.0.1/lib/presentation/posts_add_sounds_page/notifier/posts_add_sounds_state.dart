// ignore_for_file: must_be_immutable

part of 'posts_add_sounds_notifier.dart';

/// Represents the state of PostsAddSounds in the application.
class PostsAddSoundsState extends Equatable {
  PostsAddSoundsState({this.postsAddSoundsModelObj});

  PostsAddSoundsModel? postsAddSoundsModelObj;

  @override
  List<Object?> get props => [
        postsAddSoundsModelObj,
      ];

  PostsAddSoundsState copyWith({PostsAddSoundsModel? postsAddSoundsModelObj}) {
    return PostsAddSoundsState(
      postsAddSoundsModelObj:
          postsAddSoundsModelObj ?? this.postsAddSoundsModelObj,
    );
  }
}
