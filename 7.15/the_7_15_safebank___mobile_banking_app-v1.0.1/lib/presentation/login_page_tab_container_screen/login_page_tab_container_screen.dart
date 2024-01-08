import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/presentation/login_page/login_page.dart';
import 'package:the_7_15_safebank___mobile_banking_app/presentation/sign_up_page/sign_up_page.dart';

class LoginPageTabContainerScreen extends StatefulWidget {
  const LoginPageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginPageTabContainerScreenState createState() =>
      LoginPageTabContainerScreenState();
}

class LoginPageTabContainerScreenState
    extends State<LoginPageTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

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
                  controller: tabviewController,
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
                        "Login",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Sign Up",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 698.v,
                child: TabBarView(
                  controller: tabviewController,
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
