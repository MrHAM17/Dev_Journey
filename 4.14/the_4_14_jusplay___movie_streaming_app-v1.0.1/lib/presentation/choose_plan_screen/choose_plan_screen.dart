import '../choose_plan_screen/widgets/chooseplan_item_widget.dart';
import 'controller/choose_plan_controller.dart';
import 'models/chooseplan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class ChoosePlanScreen extends GetWidget<ChoosePlanController> {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          SizedBox(
                              width: 191.h,
                              child: Text("msg_choose_your_favorite".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 20.v),
                          _buildChoosePlan()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 324.h, 7.v),
            onTap: () {
              onTapClose();
            }));
  }

  /// Section Widget
  Widget _buildChoosePlan() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 32.v);
        },
        itemCount:
            controller.choosePlanModelObj.value.chooseplanItemList.value.length,
        itemBuilder: (context, index) {
          ChooseplanItemModel model = controller
              .choosePlanModelObj.value.chooseplanItemList.value[index];
          return ChooseplanItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
