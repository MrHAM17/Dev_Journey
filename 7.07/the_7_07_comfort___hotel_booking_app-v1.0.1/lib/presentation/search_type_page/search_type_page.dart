import 'package:flutter/material.dart';
import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SearchTypePage extends StatefulWidget {
  const SearchTypePage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypePageState createState() => SearchTypePageState();
}

class SearchTypePageState extends State<SearchTypePage>
    with AutomaticKeepAliveClientMixin<SearchTypePage> {
  @override
  bool get wantKeepAlive => true;
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
              _buildRecentSerches(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSerches(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recent",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 21.v),
          _buildSeventyThree(
            context,
            palazzoHotel: "Amsterdam, Netherlands",
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            context,
            palazzoHotel: "Palazzo Hotel",
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            context,
            palazzoHotel: "Bulgari Hotel",
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            context,
            palazzoHotel: "Martinez Cannes Hotel",
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            context,
            palazzoHotel: "London, United Kingdom",
          ),
          SizedBox(height: 24.v),
          _buildSeventyThree(
            context,
            palazzoHotel: "Palms Casino Hotel",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeventyThree(
    BuildContext context, {
    required String palazzoHotel,
  }) {
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
