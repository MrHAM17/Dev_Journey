import 'notifier/onbording_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/custom_icon_button.dart';

class OnbordingTwoScreen extends ConsumerStatefulWidget {
  const OnbordingTwoScreen({Key? key}) : super(key: key);

  @override
  OnbordingTwoScreenState createState() => OnbordingTwoScreenState();
}

class OnbordingTwoScreenState extends ConsumerState<OnbordingTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbordingTwo),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        decoration: AppDecoration.gradientPrimaryToPrimary,
                        child: Column(children: [
                          _buildAppBar(context),
                          Spacer(),
                          Text("lbl_latest_style".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Container(
                              width: 277.h,
                              margin: EdgeInsets.symmetric(horizontal: 49.h),
                              child: Text("msg_the_latest_styles".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumWhiteA700
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 38.v),
                          CustomIconButton(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              padding: EdgeInsets.all(18.h),
                              decoration: IconButtonStyleHelper.fillWhiteA,
                              onTap: () {
                                onTapBtnArrowDown(context);
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown)),
                          SizedBox(height: 55.v)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_skip".tr,
              margin: EdgeInsets.fromLTRB(16.h, 8.v, 16.h, 4.v),
              onTap: () {
                onTapSkip(context);
              })
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the signUpSignInScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpSignInScreen,
    );
  }

  /// Navigates to the onbordingThreeScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onbordingThreeScreen,
    );
  }
}
