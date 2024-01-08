// ignore_for_file: must_be_immutable

part of 'posts_templates_notifier.dart';

/// Represents the state of PostsTemplates in the application.
class PostsTemplatesState extends Equatable {
  PostsTemplatesState({this.postsTemplatesModelObj});

  PostsTemplatesModel? postsTemplatesModelObj;

  @override
  List<Object?> get props => [
        postsTemplatesModelObj,
      ];

  PostsTemplatesState copyWith({PostsTemplatesModel? postsTemplatesModelObj}) {
    return PostsTemplatesState(
      postsTemplatesModelObj:
          postsTemplatesModelObj ?? this.postsTemplatesModelObj,
    );
  }
}
