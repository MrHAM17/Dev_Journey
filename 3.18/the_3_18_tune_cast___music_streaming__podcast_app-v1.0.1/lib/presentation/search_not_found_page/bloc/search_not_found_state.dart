// ignore_for_file: must_be_immutable

part of 'search_not_found_bloc.dart';

/// Represents the state of SearchNotFound in the application.
class SearchNotFoundState extends Equatable {
  SearchNotFoundState({this.searchNotFoundModelObj});

  SearchNotFoundModel? searchNotFoundModelObj;

  @override
  List<Object?> get props => [
        searchNotFoundModelObj,
      ];
  SearchNotFoundState copyWith({SearchNotFoundModel? searchNotFoundModelObj}) {
    return SearchNotFoundState(
      searchNotFoundModelObj:
          searchNotFoundModelObj ?? this.searchNotFoundModelObj,
    );
  }
}
