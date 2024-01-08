import '../schedule_page/widgets/schedule_item_widget.dart';
import 'controller/schedule_controller.dart';
import 'models/schedule_item_model.dart';
import 'models/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_04_health_care/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatelessWidget {
  SchedulePage({Key? key}) : super(key: key);

  ScheduleController controller =
      Get.put(ScheduleController(ScheduleModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(
                    children: [SizedBox(height: 30.v), _buildSchedule()]))));
  }

  /// Section Widget
  Widget _buildSchedule() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount:
                controller.scheduleModelObj.value.scheduleItemList.value.length,
            itemBuilder: (context, index) {
              ScheduleItemModel model = controller
                  .scheduleModelObj.value.scheduleItemList.value[index];
              return ScheduleItemWidget(model, onTapCancel: () {
                onTapCancel();
              }, onTapReschedule: () {
                onTapReschedule();
              });
            })));
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapCancel() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapReschedule() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
