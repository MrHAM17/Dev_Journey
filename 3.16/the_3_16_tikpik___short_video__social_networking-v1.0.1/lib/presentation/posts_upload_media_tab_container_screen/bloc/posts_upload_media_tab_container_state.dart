// ignore_for_file: must_be_immutable

part of 'posts_upload_media_tab_container_bloc.dart';

/// Represents the state of PostsUploadMediaTabContainer in the application.
class PostsUploadMediaTabContainerState extends Equatable {
  PostsUploadMediaTabContainerState(
      {this.postsUploadMediaTabContainerModelObj});

  PostsUploadMediaTabContainerModel? postsUploadMediaTabContainerModelObj;

  @override
  List<Object?> get props => [
        postsUploadMediaTabContainerModelObj,
      ];
  PostsUploadMediaTabContainerState copyWith(
      {PostsUploadMediaTabContainerModel?
          postsUploadMediaTabContainerModelObj}) {
    return PostsUploadMediaTabContainerState(
      postsUploadMediaTabContainerModelObj:
          postsUploadMediaTabContainerModelObj ??
              this.postsUploadMediaTabContainerModelObj,
    );
  }
}
