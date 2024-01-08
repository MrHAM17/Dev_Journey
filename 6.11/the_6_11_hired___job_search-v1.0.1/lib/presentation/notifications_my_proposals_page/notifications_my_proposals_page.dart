import '../notifications_my_proposals_page/widgets/notificationsmyproposals_item_widget.dart';
import 'models/notificationsmyproposals_item_model.dart';
import 'notifier/notifications_my_proposals_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';

class NotificationsMyProposalsPage extends ConsumerStatefulWidget {
  const NotificationsMyProposalsPage({Key? key}) : super(key: key);

  @override
  NotificationsMyProposalsPageState createState() =>
      NotificationsMyProposalsPageState();
}

class NotificationsMyProposalsPageState
    extends ConsumerState<NotificationsMyProposalsPage>
    with AutomaticKeepAliveClientMixin<NotificationsMyProposalsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildOpened(context)
                ]))));
  }

  /// Section Widget
  Widget _buildOpened(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text("msg_application_status".tr,
                    style: CustomTextStyles.titleMediumBold_1)),
            CustomImageView(
                imagePath: ImageConstant.imgArrowUp,
                height: 24.adaptSize,
                width: 24.adaptSize)
          ]),
          SizedBox(height: 23.v),
          Consumer(builder: (context, ref, _) {
            return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.5.v),
                      child: SizedBox(
                          width: 327.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.gray300)));
                },
                itemCount: ref
                        .watch(notificationsMyProposalsNotifier)
                        .notificationsMyProposalsModelObj
                        ?.notificationsmyproposalsItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  NotificationsmyproposalsItemModel model = ref
                          .watch(notificationsMyProposalsNotifier)
                          .notificationsMyProposalsModelObj
                          ?.notificationsmyproposalsItemList[index] ??
                      NotificationsmyproposalsItemModel();
                  return NotificationsmyproposalsItemWidget(model);
                });
          })
        ]));
  }
}
