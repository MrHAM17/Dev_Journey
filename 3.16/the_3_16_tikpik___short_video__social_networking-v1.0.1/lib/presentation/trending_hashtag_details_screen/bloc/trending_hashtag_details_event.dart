// ignore_for_file: must_be_immutable

part of 'trending_hashtag_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingHashtagDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingHashtagDetailsEvent extends Equatable {}

/// Event that is dispatched when the TrendingHashtagDetails widget is first created.
class TrendingHashtagDetailsInitialEvent extends TrendingHashtagDetailsEvent {
  @override
  List<Object?> get props => [];
}
