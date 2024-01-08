import 'controller/login_page_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/login_page/login_page.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/sign_up_page/sign_up_page.dart';

// ignore_for_file: must_be_immutable
class LoginPageTabContainerScreen
    extends GetWidget<LoginPageTabContainerController> {
  const LoginPageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Container(
                height: 40.v,
                width: 161.h,
                margin: EdgeInsets.only(left: 24.h),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: theme.colorScheme.secondaryContainer,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_login".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_sign_up".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 698.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    LoginPage(),
                    SignUpPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
