// ignore_for_file: must_be_immutable

part of 'report_notifier.dart';

/// Represents the state of Report in the application.
class ReportState extends Equatable {
  ReportState({
    this.selectAReason = "",
    this.reportModelObj,
  });

  ReportModel? reportModelObj;

  String selectAReason;

  @override
  List<Object?> get props => [
        selectAReason,
        reportModelObj,
      ];

  ReportState copyWith({
    String? selectAReason,
    ReportModel? reportModelObj,
  }) {
    return ReportState(
      selectAReason: selectAReason ?? this.selectAReason,
      reportModelObj: reportModelObj ?? this.reportModelObj,
    );
  }
}
