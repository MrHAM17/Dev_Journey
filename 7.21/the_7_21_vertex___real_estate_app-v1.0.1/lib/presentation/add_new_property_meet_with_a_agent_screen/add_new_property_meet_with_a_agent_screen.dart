import '../add_new_property_meet_with_a_agent_screen/widgets/time_item_widget.dart';import 'package:flutter/material.dart';import 'package:table_calendar/table_calendar.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class AddNewPropertyMeetWithAAgentScreen extends StatelessWidget {AddNewPropertyMeetWithAAgentScreen({Key? key}) : super(key: key);

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime focusedDay = DateTime.now();

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), child: Column(children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.25, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary))))), SizedBox(height: 24.v), _buildPropertyAddress(context), SizedBox(height: 32.v), _buildTitle(context), SizedBox(height: 16.v), _buildDates(context), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Pick a time", style: CustomTextStyles.titleMediumBold_1))), SizedBox(height: 15.v), _buildTime(context)])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Add New Property")); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 4.v), child: Text("Meet with a Agent", style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 79.h, text: "02 / 08", buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)])); } 
/// Section Widget
Widget _buildPropertyAddress(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisSize: MainAxisSize.max, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgLinkedin))), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Property Address", style: CustomTextStyles.titleSmallBold), SizedBox(height: 4.v), Text("Woodland St, 105, Phoenix, AZ 8...", style: theme.textTheme.bodySmall)]))])); } 
/// Section Widget
Widget _buildTitle(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("January", style: CustomTextStyles.titleMediumBold_1)), Spacer(), CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL5, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftPrimarycontainer)), Padding(padding: EdgeInsets.only(left: 16.h), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL5, child: CustomImageView(imagePath: ImageConstant.imgIcons)))])); } 
/// Section Widget
Widget _buildDates(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 96.v, width: 368.h, child: TableCalendar(locale: 'en_US', firstDay: DateTime(DateTime.now().year - 5), lastDay: DateTime(DateTime.now().year + 5), calendarFormat: CalendarFormat.month, rangeSelectionMode: rangeSelectionMode, startingDayOfWeek: StartingDayOfWeek.sunday, headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true), calendarStyle: CalendarStyle(outsideDaysVisible: false, isTodayHighlighted: true), daysOfWeekStyle: DaysOfWeekStyle(), focusedDay: focusedDay, rangeStartDay: rangeStart, rangeEndDay: rangeEnd, onDaySelected: (selectedDay, focusedDay) {}, onRangeSelected: (start, end, focusedDay) {}, onPageChanged: (focusedDay) {}))); } 
/// Section Widget
Widget _buildTime(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 41.v, child: ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: 4, itemBuilder: (context, index) {return TimeItemWidget();}))); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewPropertyTimeToSellScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewPropertyTimeToSellScreen); } 
 }
