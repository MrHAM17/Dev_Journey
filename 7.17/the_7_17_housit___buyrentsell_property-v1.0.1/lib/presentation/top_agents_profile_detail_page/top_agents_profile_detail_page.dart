import '../top_agents_profile_detail_page/widgets/topagentsprofiledetail_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TopAgentsProfileDetailPage extends StatefulWidget {
  const TopAgentsProfileDetailPage({Key? key})
      : super(
          key: key,
        );

  @override
  TopAgentsProfileDetailPageState createState() =>
      TopAgentsProfileDetailPageState();
}

class TopAgentsProfileDetailPageState extends State<TopAgentsProfileDetailPage>
    with AutomaticKeepAliveClientMixin<TopAgentsProfileDetailPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Column(
                  children: [
                    _buildButton(context),
                    Container(
                      height: 567.v,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 14.v,
                      ),
                      decoration: AppDecoration.white,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildItemHeader(context),
                                SizedBox(height: 20.v),
                                _buildTopAgentsProfileDetail(context),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            width: 327.h,
                            text: "Start Chat",
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            height: 32.v,
            width: 152.h,
            text: "Listing",
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              right: 52.h,
              bottom: 6.v,
            ),
            child: Text(
              "History",
              style: CustomTextStyles.titleSmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItemHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
          child: Text(
            "140",
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 7.h,
            top: 10.v,
            bottom: 6.v,
          ),
          child: Text(
            "listings",
            style: CustomTextStyles.titleMediumMedium,
          ),
        ),
        Container(
          width: 93.h,
          margin: EdgeInsets.only(left: 136.h),
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            children: [
              Container(
                height: 24.v,
                width: 36.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconHorizontal,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTopAgentsProfileDetail(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 232.v,
        crossAxisCount: 2,
        mainAxisSpacing: 7.h,
        crossAxisSpacing: 7.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return TopagentsprofiledetailItemWidget();
      },
    );
  }
}
