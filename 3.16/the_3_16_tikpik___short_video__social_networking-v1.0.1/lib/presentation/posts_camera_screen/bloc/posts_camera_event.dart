// ignore_for_file: must_be_immutable

part of 'posts_camera_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsCamera widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsCameraEvent extends Equatable {}

/// Event that is dispatched when the PostsCamera widget is first created.
class PostsCameraInitialEvent extends PostsCameraEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends PostsCameraEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
