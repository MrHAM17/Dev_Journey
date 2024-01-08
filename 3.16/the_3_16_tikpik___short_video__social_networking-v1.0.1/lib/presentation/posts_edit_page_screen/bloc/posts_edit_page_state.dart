// ignore_for_file: must_be_immutable

part of 'posts_edit_page_bloc.dart';

/// Represents the state of PostsEditPage in the application.
class PostsEditPageState extends Equatable {
  PostsEditPageState({this.postsEditPageModelObj});

  PostsEditPageModel? postsEditPageModelObj;

  @override
  List<Object?> get props => [
        postsEditPageModelObj,
      ];
  PostsEditPageState copyWith({PostsEditPageModel? postsEditPageModelObj}) {
    return PostsEditPageState(
      postsEditPageModelObj:
          postsEditPageModelObj ?? this.postsEditPageModelObj,
    );
  }
}
