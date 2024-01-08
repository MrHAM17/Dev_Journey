// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'language_item_model.dart';

/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel extends Equatable {
  LanguageModel({this.languageItemList = const []}) {}

  List<LanguageItemModel> languageItemList;

  LanguageModel copyWith({List<LanguageItemModel>? languageItemList}) {
    return LanguageModel(
      languageItemList: languageItemList ?? this.languageItemList,
    );
  }

  @override
  List<Object?> get props => [languageItemList];
}
