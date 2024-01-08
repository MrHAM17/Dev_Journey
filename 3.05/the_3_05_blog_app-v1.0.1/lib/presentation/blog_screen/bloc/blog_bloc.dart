import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_05_blog_app/presentation/blog_screen/models/blog_model.dart';
part 'blog_event.dart';
part 'blog_state.dart';

/// A bloc that manages the state of a Blog according to the event that is dispatched to it.
class BlogBloc extends Bloc<BlogEvent, BlogState> {
  BlogBloc(BlogState initialState) : super(initialState) {
    on<BlogInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BlogInitialEvent event,
    Emitter<BlogState> emit,
  ) async {}
}
