// ignore_for_file: must_be_immutable

part of 'help_notifier.dart';

/// Represents the state of Help in the application.
class HelpState extends Equatable {
  HelpState({
    this.searchController,
    this.helpModelObj,
  });

  TextEditingController? searchController;

  HelpModel? helpModelObj;

  @override
  List<Object?> get props => [
        searchController,
        helpModelObj,
      ];

  HelpState copyWith({
    TextEditingController? searchController,
    HelpModel? helpModelObj,
  }) {
    return HelpState(
      searchController: searchController ?? this.searchController,
      helpModelObj: helpModelObj ?? this.helpModelObj,
    );
  }
}
