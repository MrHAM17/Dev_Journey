// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [report_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReportModel extends Equatable {ReportModel({this.radioList = const []}) {  }

List<String> radioList;

ReportModel copyWith({List<String>? radioList}) { return ReportModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
