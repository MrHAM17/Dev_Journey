// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'profiledetailsone_item_model.dart';/// This class defines the variables used in the [profile_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileDetailsOneModel extends Equatable {ProfileDetailsOneModel({this.profiledetailsoneItemList = const []}) {  }

List<ProfiledetailsoneItemModel> profiledetailsoneItemList;

ProfileDetailsOneModel copyWith({List<ProfiledetailsoneItemModel>? profiledetailsoneItemList}) { return ProfileDetailsOneModel(
profiledetailsoneItemList : profiledetailsoneItemList ?? this.profiledetailsoneItemList,
); } 
@override List<Object?> get props => [profiledetailsoneItemList];
 }
