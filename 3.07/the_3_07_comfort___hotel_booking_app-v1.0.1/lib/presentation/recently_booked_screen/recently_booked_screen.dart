import '../recently_booked_screen/widgets/recentlybooked_item_widget.dart';import 'bloc/recently_booked_bloc.dart';import 'models/recently_booked_model.dart';import 'models/recentlybooked_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';class RecentlyBookedScreen extends StatelessWidget {const RecentlyBookedScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<RecentlyBookedBloc>(create: (context) => RecentlyBookedBloc(RecentlyBookedState(recentlyBookedModelObj: RecentlyBookedModel()))..add(RecentlyBookedInitialEvent()), child: RecentlyBookedScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 18.v, right: 24.h), child: BlocSelector<RecentlyBookedBloc, RecentlyBookedState, RecentlyBookedModel?>(selector: (state) => state.recentlyBookedModelObj, builder: (context, recentlyBookedModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: recentlyBookedModelObj?.recentlybookedItemList.length ?? 0, itemBuilder: (context, index) {RecentlybookedItemModel model = recentlyBookedModelObj?.recentlybookedItemList[index] ?? RecentlybookedItemModel(); return RecentlybookedItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_recently_booked".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgUserPrimary28x28, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGrid, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }