// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'about_item_model.dart';

/// This class defines the variables used in the [about_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AboutModel extends Equatable {
  AboutModel({this.aboutItemList = const []}) {}

  List<AboutItemModel> aboutItemList;

  AboutModel copyWith({List<AboutItemModel>? aboutItemList}) {
    return AboutModel(
      aboutItemList: aboutItemList ?? this.aboutItemList,
    );
  }

  @override
  List<Object?> get props => [aboutItemList];
}
