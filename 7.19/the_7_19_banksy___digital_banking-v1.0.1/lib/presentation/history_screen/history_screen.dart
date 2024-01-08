import '../history_screen/widgets/history_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_drop_down.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              _buildFrame(context),
              SizedBox(height: 23.v),
              _buildHistory(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFavoriteOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Histroy",
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomDropDown(
          width: 170.h,
          icon: Container(
            margin: EdgeInsets.only(left: 9.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFavoriteOnprimarycontainer12x12,
              height: 12.adaptSize,
              width: 12.adaptSize,
            ),
          ),
          hintText: "Electric Bill",
          hintStyle: theme.textTheme.headlineMedium!,
          items: dropdownItemList,
          onChanged: (value) {},
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 8.v,
          ),
          child: Text(
            "All Time",
            style: CustomTextStyles.labelLargeGray500,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteGray500,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 3.h,
            top: 14.v,
            bottom: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 9.0.v),
          child: SizedBox(
            width: 366.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray100,
            ),
          ),
        );
      },
      itemCount: 8,
      itemBuilder: (context, index) {
        return HistoryItemWidget();
      },
    );
  }
}
