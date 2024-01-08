// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayoutvertical_item_model.dart';/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel extends Equatable {ProfileModel({this.autolayoutverticalItemList = const []}) {  }

List<AutolayoutverticalItemModel> autolayoutverticalItemList;

ProfileModel copyWith({List<AutolayoutverticalItemModel>? autolayoutverticalItemList}) { return ProfileModel(
autolayoutverticalItemList : autolayoutverticalItemList ?? this.autolayoutverticalItemList,
); } 
@override List<Object?> get props => [autolayoutverticalItemList];
 }
