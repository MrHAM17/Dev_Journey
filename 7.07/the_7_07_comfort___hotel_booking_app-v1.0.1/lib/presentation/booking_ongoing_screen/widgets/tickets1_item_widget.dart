import 'package:flutter/material.dart';
import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Tickets1ItemWidget extends StatelessWidget {
  Tickets1ItemWidget({
    Key? key,
    this.onTapCancelBooking,
    this.onTapViewTicket,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCancelBooking;

  VoidCallback? onTapViewTicket;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.v,
            width: 332.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text(
                      "Royale President Hotel",
                      style: CustomTextStyles.titleLargeSemiBold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 41.v,
                          bottom: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Paris, France",
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 11.v),
                            CustomElevatedButton(
                              height: 24.v,
                              width: 60.h,
                              text: "Paid",
                              buttonStyle: CustomButtonStyles.fillTeal,
                              buttonTextStyle:
                                  CustomTextStyles.labelMediumCyan300,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "Cancel Booking",
                  margin: EdgeInsets.only(right: 6.h),
                  onPressed: () {
                    onTapCancelBooking!.call();
                  },
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 38.v,
                  text: "View Ticket",
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                  buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
                  onPressed: () {
                    onTapViewTicket!.call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
