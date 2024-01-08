// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'profileaddressdetails_item_model.dart';

/// This class defines the variables used in the [profile_address_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileAddressDetailsModel extends Equatable {
  ProfileAddressDetailsModel({this.profileaddressdetailsItemList = const []}) {}

  List<ProfileaddressdetailsItemModel> profileaddressdetailsItemList;

  ProfileAddressDetailsModel copyWith(
      {List<ProfileaddressdetailsItemModel>? profileaddressdetailsItemList}) {
    return ProfileAddressDetailsModel(
      profileaddressdetailsItemList:
          profileaddressdetailsItemList ?? this.profileaddressdetailsItemList,
    );
  }

  @override
  List<Object?> get props => [profileaddressdetailsItemList];
}
