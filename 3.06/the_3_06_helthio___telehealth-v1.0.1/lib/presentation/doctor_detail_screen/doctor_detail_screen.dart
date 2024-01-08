import '../doctor_detail_screen/widgets/am_item_widget.dart';
import 'bloc/doctor_detail_bloc.dart';
import 'models/am_item_model.dart';
import 'models/doctor_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:the_3_06_helthio___telehealth/core/app_export.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_icon_button.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DoctorDetailBloc>(
        create: (context) => DoctorDetailBloc(
            DoctorDetailState(doctorDetailModelObj: DoctorDetailModel()))
          ..add(DoctorDetailInitialEvent()),
        child: DoctorDetailScreen());
  }

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
        title: AppbarSubtitleOne(text: "lbl_details".tr),
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
                      Text("msg_dr_marcus_horizon".tr,
                          style: CustomTextStyles.titleMedium18),
                      SizedBox(height: 8.v),
                      Text("lbl_chardiologist".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 8.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 16.adaptSize,
                            width: 16.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl_4_7".tr,
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
                            child: Text("lbl_800m_away".tr,
                                style: theme.textTheme.labelLarge))
                      ])
                    ]))
          ])),
      SizedBox(height: 17.v),
      Text("lbl_about".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 8.v),
      SizedBox(
          width: 305.h,
          child: ReadMoreText("msg_lorem_ipsum_dolor".tr,
              trimLines: 3,
              colorClickableText: theme.colorScheme.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle:
                  CustomTextStyles.bodySmallGray600.copyWith(height: 1.50),
              lessStyle:
                  CustomTextStyles.bodySmallGray600.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildDateTime(BuildContext context) {
    return Column(children: [
      BlocBuilder<DoctorDetailBloc, DoctorDetailState>(
          builder: (context, state) {
        return SizedBox(
            height: 64.v,
            width: 327.h,
            child: TableCalendar(
                locale: 'en_US',
                firstDay: DateTime(DateTime.now().year - 5),
                lastDay: DateTime(DateTime.now().year + 5),
                calendarFormat: CalendarFormat.month,
                rangeSelectionMode: state.rangeSelectionMode,
                startingDayOfWeek: StartingDayOfWeek.sunday,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                calendarStyle: CalendarStyle(
                    outsideDaysVisible: false, isTodayHighlighted: true),
                daysOfWeekStyle: DaysOfWeekStyle(),
                headerVisible: false,
                focusedDay: state.focusedDay ?? DateTime.now(),
                rangeStartDay: state.rangeStart,
                rangeEndDay: state.rangeEnd,
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(state.selectedDay, selectedDay)) {
                    state.focusedDay = focusedDay;
                    state.selectedDay = selectedDay;
                    state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                  }
                },
                onRangeSelected: (start, end, focusedDay) {
                  state.focusedDay = focusedDay;
                  state.rangeEnd = end;
                  state.rangeStart = start;
                  state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                },
                onPageChanged: (focusedDay) {
                  state.focusedDay = focusedDay;
                }));
      }),
      SizedBox(height: 32.v),
      Divider(),
      SizedBox(height: 32.v),
      BlocSelector<DoctorDetailBloc, DoctorDetailState, DoctorDetailModel?>(
          selector: (state) => state.doctorDetailModelObj,
          builder: (context, doctorDetailModelObj) {
            return Wrap(
                runSpacing: 9.v,
                spacing: 9.h,
                children: List<Widget>.generate(
                    doctorDetailModelObj?.amItemList.length ?? 0, (index) {
                  AmItemModel model =
                      doctorDetailModelObj?.amItemList[index] ?? AmItemModel();
                  return AmItemWidget(model, onSelectedChipView: (value) {
                    context.read<DoctorDetailBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  });
                }));
          })
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
                  text: "lbl_book_apointment".tr,
                  margin: EdgeInsets.only(left: 16.h),
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
                  onPressed: () {
                    onTapBookApointment(context);
                  }))
        ]));
  }

  /// Navigates to the bookingDoctorScreen when the action is triggered.
  onTapBookApointment(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bookingDoctorScreen,
    );
  }
}
