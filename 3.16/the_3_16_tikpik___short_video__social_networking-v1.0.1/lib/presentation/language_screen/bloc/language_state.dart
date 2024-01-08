// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

/// Represents the state of Language in the application.
class LanguageState extends Equatable {
  LanguageState({
    this.radioGroup = "",
    this.language = "",
    this.languageModelObj,
  });

  LanguageModel? languageModelObj;

  String radioGroup;

  String language;

  @override
  List<Object?> get props => [
        radioGroup,
        language,
        languageModelObj,
      ];
  LanguageState copyWith({
    String? radioGroup,
    String? language,
    LanguageModel? languageModelObj,
  }) {
    return LanguageState(
      radioGroup: radioGroup ?? this.radioGroup,
      language: language ?? this.language,
      languageModelObj: languageModelObj ?? this.languageModelObj,
    );
  }
}
