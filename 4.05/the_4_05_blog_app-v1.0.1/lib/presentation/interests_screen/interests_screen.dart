import '../interests_screen/widgets/intrestrow1_item_widget.dart';
import 'controller/interests_controller.dart';
import 'models/intrestrow1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_05_blog_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class InterestsScreen extends GetWidget<InterestsController> {
  const InterestsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_what_are_you_interested".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 232.h,
                child: Text(
                  "msg_add_or_edit_topics".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeGray600.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              _buildIntrestRow1(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNext(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_welcome".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildIntrestRow1() {
    return Obx(
      () => Wrap(
        runSpacing: 12.v,
        spacing: 12.h,
        children: List<Widget>.generate(
          controller.interestsModelObj.value.intrestrow1ItemList.value.length,
          (index) {
            Intrestrow1ItemModel model = controller
                .interestsModelObj.value.intrestrow1ItemList.value[index];

            return Intrestrow1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 20.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
