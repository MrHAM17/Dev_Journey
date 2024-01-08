// ignore_for_file: must_be_immutable

part of 'posts_upload_media_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsUploadMedia widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsUploadMediaEvent extends Equatable {}

/// Event that is dispatched when the PostsUploadMedia widget is first created.
class PostsUploadMediaInitialEvent extends PostsUploadMediaEvent {
  @override
  List<Object?> get props => [];
}
