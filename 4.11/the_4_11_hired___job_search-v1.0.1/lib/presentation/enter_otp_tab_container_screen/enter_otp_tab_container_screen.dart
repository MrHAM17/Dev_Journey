import 'controller/enter_otp_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/enter_otp_page/enter_otp_page.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class EnterOtpTabContainerScreen
    extends GetWidget<EnterOtpTabContainerController> {
  const EnterOtpTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 31.v),
              Text(
                "lbl_enter_otp".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 10.v),
              Container(
                width: 282.h,
                margin: EdgeInsets.symmetric(horizontal: 46.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_we_have_just_sent2".tr,
                        style: CustomTextStyles.titleSmallBluegray400_2,
                      ),
                      TextSpan(
                        text: "msg_example_gmail_com".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 37.v),
              Container(
                height: 56.v,
                width: 296.h,
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 24.fSize,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: theme.colorScheme.primary,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 24.fSize,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  indicator: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    borderRadius: BorderRadius.circular(
                      24.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_4".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_3".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_2".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 508.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    EnterOtpPage(),
                    EnterOtpPage(),
                    EnterOtpPage(),
                    EnterOtpPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgComponent1,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent3,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }
}
