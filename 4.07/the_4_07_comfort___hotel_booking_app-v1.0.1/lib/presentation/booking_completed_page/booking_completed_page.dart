import '../booking_completed_page/widgets/tickets_item_widget.dart';
import 'controller/booking_completed_controller.dart';
import 'models/booking_completed_model.dart';
import 'models/tickets_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';
import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';

class BookingCompletedPage extends StatelessWidget {
  BookingCompletedPage({Key? key})
      : super(
          key: key,
        );

  BookingCompletedController controller =
      Get.put(BookingCompletedController(BookingCompletedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              _buildMyBookings(),
              SizedBox(height: 30.v),
              _buildTickets(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
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
  Widget _buildMyBookings() {
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
  Widget _buildTickets() {
    return Obx(
      () => ListView.separated(
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
        itemCount: controller
            .bookingCompletedModelObj.value.ticketsItemList.value.length,
        itemBuilder: (context, index) {
          TicketsItemModel model = controller
              .bookingCompletedModelObj.value.ticketsItemList.value[index];
          return TicketsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
