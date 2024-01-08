// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

/// Represents the state of Language in the application.
class LanguageState extends Equatable {
  LanguageState({
    this.suggested = "",
    this.others = "",
    this.languageModelObj,
  });

  LanguageModel? languageModelObj;

  String suggested;

  String others;

  @override
  List<Object?> get props => [
        suggested,
        others,
        languageModelObj,
      ];
  LanguageState copyWith({
    String? suggested,
    String? others,
    LanguageModel? languageModelObj,
  }) {
    return LanguageState(
      suggested: suggested ?? this.suggested,
      others: others ?? this.others,
      languageModelObj: languageModelObj ?? this.languageModelObj,
    );
  }
}
