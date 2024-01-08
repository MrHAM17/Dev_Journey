// ignore_for_file: must_be_immutable

part of 'trending_hashtag_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingHashtag widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingHashtagEvent extends Equatable {}

/// Event that is dispatched when the TrendingHashtag widget is first created.
class TrendingHashtagInitialEvent extends TrendingHashtagEvent {
  @override
  List<Object?> get props => [];
}
