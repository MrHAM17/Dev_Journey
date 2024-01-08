import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/presentation/create_new_pin_page/create_new_pin_page.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';

class CreateNewPinTabContainerScreen extends StatefulWidget {
  const CreateNewPinTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreateNewPinTabContainerScreenState createState() =>
      CreateNewPinTabContainerScreenState();
}

class CreateNewPinTabContainerScreenState
    extends State<CreateNewPinTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                width: 331.h,
                margin: EdgeInsets.symmetric(horizontal: 48.h),
                child: Text(
                  "Add a PIN number to make your account\nmore secure.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge18.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 78.v),
              _buildTabview(context),
              SizedBox(
                height: 504.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    CreateNewPinPage(),
                    CreateNewPinPage(),
                    CreateNewPinPage(),
                    CreateNewPinPage(),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 49.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 11.v,
        ),
      ),
      title: AppbarTitle(
        text: "Create New PIN",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 61.v,
      width: 381.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray900,
        labelStyle: TextStyle(
          fontSize: 24.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 24.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          color: appTheme.redA20014,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
          border: Border.all(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "8",
            ),
          ),
          Tab(
            child: Text(
              "8",
            ),
          ),
          Tab(
            child: Text(
              "8",
            ),
          ),
          Tab(
            child: Text(
              "8",
            ),
          ),
        ],
      ),
    );
  }
}
