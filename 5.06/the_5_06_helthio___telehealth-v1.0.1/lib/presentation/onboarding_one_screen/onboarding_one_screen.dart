import 'models/onboarding_one_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_5_06_helthio___telehealth/widgets/custom_outlined_button.dart';
import 'provider/onboarding_one_provider.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingOneScreenState createState() => OnboardingOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingOneProvider(),
      child: OnboardingOneScreen(),
    );
  }
}

class OnboardingOneScreenState extends State<OnboardingOneScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

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
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.secondaryContainer,
                theme.colorScheme.onError,
              ],
            ),
          ),
          child: SizedBox(
            height: 768.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 768.v,
                  child: PageView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        height: 768.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img7xm1,
                              height: 468.v,
                              width: 311.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 51.v),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 42.h,
                                  vertical: 31.v,
                                ),
                                decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL64,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 276.h,
                                        margin: EdgeInsets.only(
                                          left: 2.h,
                                          right: 12.h,
                                        ),
                                        child: Text(
                                          "msg_consult_only_with".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 54.v,
                                        bottom: 4.v,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 20.v,
                                              bottom: 18.v,
                                            ),
                                            child: Text(
                                              "lbl_skip".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPrimary,
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            width: 145.h,
                                            text: "lbl_next".tr,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 768.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img7xm5,
                              height: 465.v,
                              width: 321.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 47.v),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 41.h,
                                  vertical: 31.v,
                                ),
                                decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL64,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 244.h,
                                        margin: EdgeInsets.only(
                                          left: 3.h,
                                          right: 45.h,
                                        ),
                                        child: Text(
                                          "msg_get_connect_our".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      text: "lbl_get_started".tr,
                                      margin: EdgeInsets.only(
                                        top: 54.v,
                                        bottom: 4.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 768.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img7xm2,
                              height: 467.v,
                              width: 317.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 52.v),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 42.h,
                                  vertical: 31.v,
                                ),
                                decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL64,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 230.h,
                                        margin: EdgeInsets.only(
                                          left: 2.h,
                                          right: 58.h,
                                        ),
                                        child: Text(
                                          "msg_find_a_lot_of_specialist".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 54.v,
                                        bottom: 4.v,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 20.v,
                                              bottom: 18.v,
                                            ),
                                            child: Text(
                                              "lbl_skip".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPrimary,
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            width: 145.h,
                                            text: "lbl_next".tr,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 41.h),
                            child: Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 66.v,
                                  width: 59.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text(
                                    "lbl_helthio".tr,
                                    style:
                                        CustomTextStyles.headlineSmallPrimary,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 38.v),
                                  child: Text(
                                    "msg_let_s_get_started".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                                Container(
                                  width: 244.h,
                                  margin: EdgeInsets.only(top: 7.v),
                                  child: Text(
                                    "msg_login_to_enjoy_the".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleMediumGray600
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          CustomOutlinedButton(
                            text: "lbl_sign_up".tr,
                            margin: EdgeInsets.only(top: 16.v),
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumPrimary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 4,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.blue50,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                    onDotClicked: (value) {
                      pageController.jumpToPage(value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
