import '../interests_screen/widgets/intrestrow1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_05_blog_app/widgets/custom_elevated_button.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              Text(
                "What are you interested in?",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 232.h,
                child: Text(
                  "Add or edit topics you follow.\nChoose three or more.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeGray600.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              _buildIntrestRow1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNext(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Welcome",
      ),
    );
  }

  /// Section Widget
  Widget _buildIntrestRow1(BuildContext context) {
    return Wrap(
      runSpacing: 12.v,
      spacing: 12.h,
      children: List<Widget>.generate(27, (index) => Intrestrow1ItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 20.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
