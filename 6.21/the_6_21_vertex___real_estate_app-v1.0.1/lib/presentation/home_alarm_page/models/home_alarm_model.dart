// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'homealarm_item_model.dart';/// This class defines the variables used in the [home_alarm_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeAlarmModel extends Equatable {HomeAlarmModel({this.homealarmItemList = const []}) {  }

List<HomealarmItemModel> homealarmItemList;

HomeAlarmModel copyWith({List<HomealarmItemModel>? homealarmItemList}) { return HomeAlarmModel(
homealarmItemList : homealarmItemList ?? this.homealarmItemList,
); } 
@override List<Object?> get props => [homealarmItemList];
 }
