import '../services_screen/widgets/loan_item_widget.dart';
import '../services_screen/widgets/userprofile2_item_widget.dart';
import 'controller/services_controller.dart';
import 'models/loan_item_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ServicesScreen extends GetWidget<ServicesController> {
  const ServicesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppBar(),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserProfile(),
                        SizedBox(height: 22.v),
                        Text(
                          "msg_bank_services_list".tr,
                          style: TextStyle(
                            color: appTheme.blueGray800,
                            fontSize: 16.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildLoan(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.white,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 6.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_services".tr,
            ),
            actions: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgEllipse37,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "msg_search_for_something".tr,
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
      height: 85.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: controller
              .servicesModelObj.value.userprofile2ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile2ItemModel model = controller
                .servicesModelObj.value.userprofile2ItemList.value[index];
            return Userprofile2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoan() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount:
              controller.servicesModelObj.value.loanItemList.value.length,
          itemBuilder: (context, index) {
            LoanItemModel model =
                controller.servicesModelObj.value.loanItemList.value[index];
            return LoanItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
