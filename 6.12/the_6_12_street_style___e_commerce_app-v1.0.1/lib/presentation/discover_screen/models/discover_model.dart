// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'discover_item_model.dart';

/// This class defines the variables used in the [discover_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscoverModel extends Equatable {
  DiscoverModel({this.discoverItemList = const []}) {}

  List<DiscoverItemModel> discoverItemList;

  DiscoverModel copyWith({List<DiscoverItemModel>? discoverItemList}) {
    return DiscoverModel(
      discoverItemList: discoverItemList ?? this.discoverItemList,
    );
  }

  @override
  List<Object?> get props => [discoverItemList];
}
