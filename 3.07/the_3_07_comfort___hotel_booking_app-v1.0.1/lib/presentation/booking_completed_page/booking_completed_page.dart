import '../booking_completed_page/widgets/tickets_item_widget.dart';
import 'bloc/booking_completed_bloc.dart';
import 'models/booking_completed_model.dart';
import 'models/tickets_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class BookingCompletedPage extends StatelessWidget {
  const BookingCompletedPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BookingCompletedBloc>(
      create: (context) => BookingCompletedBloc(BookingCompletedState(
        bookingCompletedModelObj: BookingCompletedModel(),
      ))
        ..add(BookingCompletedInitialEvent()),
      child: BookingCompletedPage(),
    );
  }

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
        text: "lbl_my_bookings".tr,
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
              "lbl_ongoing".tr,
              style: CustomTextStyles.titleMediumPrimarySemiBold,
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_completed".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          Spacer(
            flex: 47,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_cancelled".tr,
              style: CustomTextStyles.titleMediumPrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTickets(BuildContext context) {
    return BlocSelector<BookingCompletedBloc, BookingCompletedState,
        BookingCompletedModel?>(
      selector: (state) => state.bookingCompletedModelObj,
      builder: (context, bookingCompletedModelObj) {
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
          itemCount: bookingCompletedModelObj?.ticketsItemList.length ?? 0,
          itemBuilder: (context, index) {
            TicketsItemModel model =
                bookingCompletedModelObj?.ticketsItemList[index] ??
                    TicketsItemModel();
            return TicketsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}