import 'bloc/when_is_your_birthday_bloc.dart';import 'models/when_is_your_birthday_model.dart';import 'package:flutter/material.dart';import 'package:table_calendar/table_calendar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';class WhenIsYourBirthdayScreen extends StatelessWidget {const WhenIsYourBirthdayScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<WhenIsYourBirthdayBloc>(create: (context) => WhenIsYourBirthdayBloc(WhenIsYourBirthdayState(whenIsYourBirthdayModelObj: WhenIsYourBirthdayModel()))..add(WhenIsYourBirthdayInitialEvent()), child: WhenIsYourBirthdayScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [Text("msg_your_birthday_will".tr, style: CustomTextStyles.titleMediumMedium), Spacer(flex: 51), BlocSelector<WhenIsYourBirthdayBloc, WhenIsYourBirthdayState, TextEditingController?>(selector: (state) => state.dateController, builder: (context, dateController) {return CustomTextFormField(controller: dateController, hintText: "lbl_27_12_1995".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIconlyCurvedCalendar, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 22.h, top: 19.v, bottom: 19.v));}), SizedBox(height: 32.v), _buildCalendar(context), Spacer(flex: 48), SizedBox(height: 24.v), _buildAutoLayoutHorizontal(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_when_is_your_birthday".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildCalendar(BuildContext context) { return BlocBuilder<WhenIsYourBirthdayBloc, WhenIsYourBirthdayState>(builder: (context, state) {return SizedBox(height: 176.v, width: 348.h, child: TableCalendar(locale: 'en_US', firstDay: DateTime(DateTime.now().year - 5), lastDay: DateTime(DateTime.now().year + 5), calendarFormat: CalendarFormat.month, rangeSelectionMode: state.rangeSelectionMode, startingDayOfWeek: StartingDayOfWeek.sunday, headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true), calendarStyle: CalendarStyle(outsideDaysVisible: false, isTodayHighlighted: true), daysOfWeekStyle: DaysOfWeekStyle(), focusedDay: state.focusedDay ?? DateTime.now(), rangeStartDay: state.rangeStart, rangeEndDay: state.rangeEnd, onDaySelected: (selectedDay, focusedDay) {if (!isSameDay(state.selectedDay, selectedDay)) {state.focusedDay = focusedDay; state.selectedDay = selectedDay; state.rangeSelectionMode = RangeSelectionMode.toggledOn;}}, onRangeSelected: (start, end, focusedDay) {state.focusedDay = focusedDay; state.rangeEnd = end; state.rangeStart = start; state.rangeSelectionMode = RangeSelectionMode.toggledOn;}, onPageChanged: (focusedDay) {state.focusedDay = focusedDay;}));}); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 6.h), buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapSkip(context);})), Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapContinue(context);}))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the fillYourProfileBlankFormScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.fillYourProfileBlankFormScreen, ); } 
 }