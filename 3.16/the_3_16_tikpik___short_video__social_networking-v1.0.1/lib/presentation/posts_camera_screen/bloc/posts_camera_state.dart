// ignore_for_file: must_be_immutable

part of 'posts_camera_bloc.dart';

/// Represents the state of PostsCamera in the application.
class PostsCameraState extends Equatable {
  PostsCameraState({this.postsCameraModelObj});

  PostsCameraModel? postsCameraModelObj;

  @override
  List<Object?> get props => [
        postsCameraModelObj,
      ];
  PostsCameraState copyWith({PostsCameraModel? postsCameraModelObj}) {
    return PostsCameraState(
      postsCameraModelObj: postsCameraModelObj ?? this.postsCameraModelObj,
    );
  }
}
