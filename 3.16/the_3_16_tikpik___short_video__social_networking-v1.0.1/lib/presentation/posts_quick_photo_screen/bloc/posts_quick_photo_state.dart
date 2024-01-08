// ignore_for_file: must_be_immutable

part of 'posts_quick_photo_bloc.dart';

/// Represents the state of PostsQuickPhoto in the application.
class PostsQuickPhotoState extends Equatable {
  PostsQuickPhotoState({this.postsQuickPhotoModelObj});

  PostsQuickPhotoModel? postsQuickPhotoModelObj;

  @override
  List<Object?> get props => [
        postsQuickPhotoModelObj,
      ];
  PostsQuickPhotoState copyWith(
      {PostsQuickPhotoModel? postsQuickPhotoModelObj}) {
    return PostsQuickPhotoState(
      postsQuickPhotoModelObj:
          postsQuickPhotoModelObj ?? this.postsQuickPhotoModelObj,
    );
  }
}
