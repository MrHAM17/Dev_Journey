// ignore_for_file: must_be_immutable

part of 'posts_upload_media_notifier.dart';

/// Represents the state of PostsUploadMedia in the application.
class PostsUploadMediaState extends Equatable {
  PostsUploadMediaState({this.postsUploadMediaModelObj});

  PostsUploadMediaModel? postsUploadMediaModelObj;

  @override
  List<Object?> get props => [
        postsUploadMediaModelObj,
      ];

  PostsUploadMediaState copyWith(
      {PostsUploadMediaModel? postsUploadMediaModelObj}) {
    return PostsUploadMediaState(
      postsUploadMediaModelObj:
          postsUploadMediaModelObj ?? this.postsUploadMediaModelObj,
    );
  }
}
