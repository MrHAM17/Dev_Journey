// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movies6_item_model.dart';

/// This class defines the variables used in the [channel_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelFiveModel extends Equatable {
  ChannelFiveModel({this.movies6ItemList = const []}) {}

  List<Movies6ItemModel> movies6ItemList;

  ChannelFiveModel copyWith({List<Movies6ItemModel>? movies6ItemList}) {
    return ChannelFiveModel(
      movies6ItemList: movies6ItemList ?? this.movies6ItemList,
    );
  }

  @override
  List<Object?> get props => [movies6ItemList];
}
