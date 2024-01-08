import '../schedule_page/widgets/schedule_item_widget.dart';
import 'models/schedule_item_model.dart';
import 'notifier/schedule_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_04_health_care/core/app_export.dart';

class SchedulePage extends ConsumerStatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends ConsumerState<SchedulePage>
    with AutomaticKeepAliveClientMixin<SchedulePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(children: [
                  SizedBox(height: 30.v),
                  _buildSchedule(context)
                ]))));
  }

  /// Section Widget
  Widget _buildSchedule(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.v);
              },
              itemCount: ref
                      .watch(scheduleNotifier)
                      .scheduleModelObj
                      ?.scheduleItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ScheduleItemModel model = ref
                        .watch(scheduleNotifier)
                        .scheduleModelObj
                        ?.scheduleItemList[index] ??
                    ScheduleItemModel();
                return ScheduleItemWidget(model, onTapCancel: () {
                  onTapCancel(context);
                }, onTapReschedule: () {
                  onTapReschedule(context);
                });
              });
        }));
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapCancel(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapReschedule(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
