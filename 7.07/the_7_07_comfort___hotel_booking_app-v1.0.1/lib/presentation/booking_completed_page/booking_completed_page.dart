import '../booking_completed_page/widgets/tickets_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class BookingCompletedPage extends StatelessWidget {
  const BookingCompletedPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              _buildMyBookings(context),
              SizedBox(height: 30.v),
              _buildTickets(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFloatingIconWhiteA700,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarTitle(
        text: "My Bookings",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 11.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMyBookings(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 10.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 3.v,
            ),
            child: Text(
              "Ongoing",
              style: CustomTextStyles.titleMediumPrimarySemiBold,
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Completed",
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          Spacer(
            flex: 47,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "Cancelled",
              style: CustomTextStyles.titleMediumPrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTickets(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.v),
          child: SizedBox(
            width: 340.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray700,
            ),
          ),
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return TicketsItemWidget();
      },
    );
  }
}
