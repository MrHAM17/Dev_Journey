import 'package:flutter/material.dart';
import 'package:the_7_04_health_care/core/app_export.dart';
import 'package:the_7_04_health_care/presentation/message_page/message_page.dart';
import 'package:the_7_04_health_care/widgets/app_bar/appbar_title.dart';
import 'package:the_7_04_health_care/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_04_health_care/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class MessageTabContainerPage extends StatefulWidget {
  const MessageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessageTabContainerPageState createState() => MessageTabContainerPageState();
}

class MessageTabContainerPageState extends State<MessageTabContainerPage>
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
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 46.v),
          child: Column(
            children: [
              _buildTabview(context),
              SizedBox(
                height: 575.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    MessagePage(),
                    MessagePage(),
                    MessagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      title: AppbarTitle(
        text: "Messages",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        Container(
          height: 29.v,
          width: 20.h,
          margin: EdgeInsets.fromLTRB(14.h, 12.v, 14.h, 9.v),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRewind,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(bottom: 9.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgComponent1,
                height: 16.v,
                width: 4.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 13.v,
                  right: 6.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 46.v,
      width: 335.h,
      decoration: BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.cyan300,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "All",
            ),
          ),
          Tab(
            child: Text(
              "Group",
            ),
          ),
          Tab(
            child: Text(
              "Private",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 55,
      width: 55,
      backgroundColor: appTheme.cyan300,
      child: CustomImageView(
        imagePath: ImageConstant.imgUserPrimary,
        height: 27.5.v,
        width: 27.5.h,
      ),
    );
  }
}
