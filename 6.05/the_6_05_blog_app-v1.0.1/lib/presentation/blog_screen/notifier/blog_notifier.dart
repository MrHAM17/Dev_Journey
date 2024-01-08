import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_05_blog_app/presentation/blog_screen/models/blog_model.dart';
part 'blog_state.dart';

final blogNotifier = StateNotifierProvider<BlogNotifier, BlogState>(
  (ref) => BlogNotifier(BlogState(
    blogModelObj: BlogModel(),
  )),
);

/// A notifier that manages the state of a Blog according to the event that is dispatched to it.
class BlogNotifier extends StateNotifier<BlogState> {
  BlogNotifier(BlogState state) : super(state) {}
}
