import '../pick_date_screen/widgets/time1_item_widget.dart';import 'package:flutter/material.dart';import 'package:table_calendar/table_calendar.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class PickDateScreen extends StatelessWidget {PickDateScreen({Key? key}) : super(key: key);

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime focusedDay = DateTime.now();

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 30.h), child: Text("Request a home tour", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), _buildTabs(context), SizedBox(height: 24.v), _buildTitle(context), SizedBox(height: 16.v), _buildDates(context), SizedBox(height: 32.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Pick a time", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 15.v), _buildTime(context)])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildTabs(BuildContext context) { return Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(4.h), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisSize: MainAxisSize.max, children: [Container(width: 159.h, padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 9.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgHome, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(right: 1.h), child: Text("In Person", style: CustomTextStyles.titleSmallBold))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgCamera, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Padding(padding: EdgeInsets.fromLTRB(10.h, 10.v, 24.h, 9.v), child: Text("Virtual", style: CustomTextStyles.titleSmallBluegray500_1))]))); } 
/// Section Widget
Widget _buildTitle(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("January", style: CustomTextStyles.titleMediumBold_1)), Spacer(), CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL5, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftPrimarycontainer)), Padding(padding: EdgeInsets.only(left: 16.h), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL5, child: CustomImageView(imagePath: ImageConstant.imgIcons)))]))); } 
/// Section Widget
Widget _buildDates(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 96.v, width: 368.h, child: TableCalendar(locale: 'en_US', firstDay: DateTime(DateTime.now().year - 5), lastDay: DateTime(DateTime.now().year + 5), calendarFormat: CalendarFormat.month, rangeSelectionMode: rangeSelectionMode, startingDayOfWeek: StartingDayOfWeek.sunday, headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true), calendarStyle: CalendarStyle(outsideDaysVisible: false, isTodayHighlighted: true), daysOfWeekStyle: DaysOfWeekStyle(), focusedDay: focusedDay, rangeStartDay: rangeStart, rangeEndDay: rangeEnd, onDaySelected: (selectedDay, focusedDay) {}, onRangeSelected: (start, end, focusedDay) {}, onPageChanged: (focusedDay) {}))); } 
/// Section Widget
Widget _buildTime(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 41.v, child: ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: 4, itemBuilder: (context, index) {return Time1ItemWidget();}))); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "Schedule Tour", onPressed: () {onTapScheduleTour(context);})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the verifyPhoneNumberScreen when the action is triggered.
onTapScheduleTour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.verifyPhoneNumberScreen); } 
 }
