import 'controller/search_type_controller.dart';
import 'models/search_type_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_4_07_comfort___hotel_booking_app/widgets/custom_icon_button.dart';

class SearchTypePage extends StatelessWidget {
  SearchTypePage({Key? key})
      : super(
          key: key,
        );

  SearchTypeController controller =
      Get.put(SearchTypeController(SearchTypeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildRecentSerches(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSerches() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_recent".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 21.v),
          _buildSeventyThree(
            palazzoHotel: "msg_amsterdam_netherlands".tr,
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            palazzoHotel: "lbl_palazzo_hotel".tr,
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            palazzoHotel: "lbl_bulgari_hotel".tr,
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            palazzoHotel: "msg_martinez_cannes".tr,
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            palazzoHotel: "msg_london_united_kingdom".tr,
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            palazzoHotel: "msg_palms_casino_hotel".tr,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeventyThree({required String palazzoHotel}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            palazzoHotel,
            style: CustomTextStyles.titleMediumGray40001.copyWith(
              color: appTheme.gray40001,
            ),
          ),
        ),
        CustomIconButton(
          height: 28.adaptSize,
          width: 28.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconlyCurvedClose,
          ),
        ),
      ],
    );
  }
}
