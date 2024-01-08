import 'models/interests_people_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/interests_people_page/interests_people_page.dart';
import 'package:the_5_05_blog_app/presentation/interests_topics_page/interests_topics_page.dart';
import 'package:the_5_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_05_blog_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_05_blog_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_05_blog_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/interests_people_tab_container_provider.dart';

class InterestsPeopleTabContainerScreen extends StatefulWidget {
  const InterestsPeopleTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsPeopleTabContainerScreenState createState() =>
      InterestsPeopleTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InterestsPeopleTabContainerProvider(),
      child: InterestsPeopleTabContainerScreen(),
    );
  }
}

class InterestsPeopleTabContainerScreenState
    extends State<InterestsPeopleTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildTabview(context),
              SizedBox(
                height: 646.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    InterestsTopicsPage(),
                    InterestsPeoplePage(),
                    InterestsPeoplePage(),
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
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_interests".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame11,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 16.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 35.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 31.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_topics".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_people".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_publication".tr,
            ),
          ),
        ],
      ),
    );
  }
}
