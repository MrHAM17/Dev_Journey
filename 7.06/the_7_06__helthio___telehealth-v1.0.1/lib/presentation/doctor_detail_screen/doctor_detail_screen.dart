import '../doctor_detail_screen/widgets/am_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:the_7_06__helthio___telehealth/core/app_export.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_06__helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_7_06__helthio___telehealth/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DoctorDetailScreen extends StatelessWidget {
  DoctorDetailScreen({Key? key}) : super(key: key);

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v),
                child: Column(children: [
                  _buildDoctorInformation(context),
                  SizedBox(height: 30.v),
                  _buildDateTime(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSixtyEight(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Details"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildDoctorInformation(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 41.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle959,
                height: 111.adaptSize,
                width: 111.adaptSize,
                radius: BorderRadius.circular(8.h)),
            Padding(
                padding: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 5.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr. Marcus Horizon",
                          style: CustomTextStyles.titleMedium18),
                      SizedBox(height: 8.v),
                      Text("Chardiologist", style: theme.textTheme.labelLarge),
                      SizedBox(height: 8.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 16.adaptSize,
                            width: 16.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("4.7",
                                style: CustomTextStyles.labelLargeAmber500))
                      ]),
                      SizedBox(height: 11.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLinkedin,
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("800m away",
                                style: theme.textTheme.labelLarge))
                      ])
                    ]))
          ])),
      SizedBox(height: 17.v),
      Text("About", style: theme.textTheme.titleMedium),
      SizedBox(height: 8.v),
      SizedBox(
          width: 305.h,
          child: ReadMoreText(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam... ",
              trimLines: 3,
              colorClickableText: theme.colorScheme.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: "Read more",
              moreStyle:
                  CustomTextStyles.bodySmallGray600.copyWith(height: 1.50),
              lessStyle:
                  CustomTextStyles.bodySmallGray600.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildDateTime(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 64.v,
          width: 327.h,
          child: TableCalendar(
              locale: 'en_US',
              firstDay: DateTime(DateTime.now().year - 5),
              lastDay: DateTime(DateTime.now().year + 5),
              calendarFormat: CalendarFormat.month,
              rangeSelectionMode: rangeSelectionMode,
              startingDayOfWeek: StartingDayOfWeek.sunday,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              calendarStyle: CalendarStyle(
                  outsideDaysVisible: false, isTodayHighlighted: true),
              daysOfWeekStyle: DaysOfWeekStyle(),
              headerVisible: false,
              focusedDay: focusedDay,
              rangeStartDay: rangeStart,
              rangeEndDay: rangeEnd,
              onDaySelected: (selectedDay, focusedDay) {},
              onRangeSelected: (start, end, focusedDay) {},
              onPageChanged: (focusedDay) {})),
      SizedBox(height: 32.v),
      Divider(),
      SizedBox(height: 32.v),
      Wrap(
          runSpacing: 9.v,
          spacing: 9.h,
          children: List<Widget>.generate(9, (index) => AmItemWidget()))
    ]);
  }

  /// Section Widget
  Widget _buildSixtyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 28.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillOnErrorContainer,
              child: CustomImageView(imagePath: ImageConstant.imgSettings)),
          Expanded(
              child: CustomElevatedButton(
                  height: 50.v,
                  text: "Book Apointment",
                  margin: EdgeInsets.only(left: 16.h),
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
                  onPressed: () {
                    onTapBookApointment(context);
                  }))
        ]));
  }

  /// Navigates to the bookingDoctorScreen when the action is triggered.
  onTapBookApointment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookingDoctorScreen);
  }
}
