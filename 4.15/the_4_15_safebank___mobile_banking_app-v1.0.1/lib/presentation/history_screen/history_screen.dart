import '../history_screen/widgets/duration_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/duration_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.fromLTRB(24.h, 25.v, 24.h, 5.v),
                child: Obx(() => GroupedListView<DurationItemModel, String>(
                    shrinkWrap: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements:
                        controller.historyModelObj.value.durationItemList.value,
                    groupBy: (element) => element.groupBy!.value,
                    sort: false,
                    groupSeparatorBuilder: (String value) {
                      return Padding(
                          padding: EdgeInsets.only(top: 22.v, bottom: 17.v),
                          child: Column(children: [
                            Text(value,
                                style: theme.textTheme.labelMedium!.copyWith(
                                    color:
                                        theme.colorScheme.secondaryContainer))
                          ]));
                    },
                    itemBuilder: (context, model) {
                      return DurationItemWidget(model);
                    },
                    separator: SizedBox(height: 15.v))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_history".tr),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgSearchBlack900,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
