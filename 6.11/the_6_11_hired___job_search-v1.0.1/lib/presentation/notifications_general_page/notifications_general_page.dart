import '../notifications_general_page/widgets/notificationsgeneral_item_widget.dart';
import 'models/notificationsgeneral_item_model.dart';
import 'notifier/notifications_general_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';

class NotificationsGeneralPage extends ConsumerStatefulWidget {
  const NotificationsGeneralPage({Key? key}) : super(key: key);

  @override
  NotificationsGeneralPageState createState() =>
      NotificationsGeneralPageState();
}

class NotificationsGeneralPageState
    extends ConsumerState<NotificationsGeneralPage>
    with AutomaticKeepAliveClientMixin<NotificationsGeneralPage> {
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
                  _buildNotificationsGeneral(context)
                ]))));
  }

  /// Section Widget
  Widget _buildNotificationsGeneral(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.5.v),
                    child: SizedBox(
                        width: 323.h,
                        child: Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.gray300)));
              },
              itemCount: ref
                      .watch(notificationsGeneralNotifier)
                      .notificationsGeneralModelObj
                      ?.notificationsgeneralItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                NotificationsgeneralItemModel model = ref
                        .watch(notificationsGeneralNotifier)
                        .notificationsGeneralModelObj
                        ?.notificationsgeneralItemList[index] ??
                    NotificationsgeneralItemModel();
                return NotificationsgeneralItemWidget(model);
              });
        }));
  }
}
