// ignore_for_file: must_be_immutable

part of 'posts_upload_media_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsUploadMediaTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsUploadMediaTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PostsUploadMediaTabContainer widget is first created.
class PostsUploadMediaTabContainerInitialEvent
    extends PostsUploadMediaTabContainerEvent {
  @override
  List<Object?> get props => [];
}
