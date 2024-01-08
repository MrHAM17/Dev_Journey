import '../notification_list_page/widgets/category_item_widget.dart';
import '../notification_list_page/widgets/list_item_widget.dart';
import '../notification_list_page/widgets/samuelella_item_widget.dart';
import 'models/category_item_model.dart';
import 'models/list_item_model.dart';
import 'models/samuelella_item_model.dart';
import 'notifier/notification_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationListPage extends ConsumerStatefulWidget {
  const NotificationListPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationListPageState createState() => NotificationListPageState();
}

class NotificationListPageState extends ConsumerState<NotificationListPage>
    with AutomaticKeepAliveClientMixin<NotificationListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.v),
                  decoration: AppDecoration.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 4.v),
                      _buildCategory(context),
                      SizedBox(height: 35.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_today".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 14.v),
                            _buildList(context),
                            SizedBox(height: 37.v),
                            Text(
                              "msg_older_notifications".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 16.v),
                            _buildSamuelElla(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategory(BuildContext context) {
    return SizedBox(
      height: 54.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: ref
                    .watch(notificationListNotifier)
                    .notificationListModelObj
                    ?.categoryItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              CategoryItemModel model = ref
                      .watch(notificationListNotifier)
                      .notificationListModelObj
                      ?.categoryItemList[index] ??
                  CategoryItemModel();
              return CategoryItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
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
            itemCount: ref
                    .watch(notificationListNotifier)
                    .notificationListModelObj
                    ?.listItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ListItemModel model = ref
                      .watch(notificationListNotifier)
                      .notificationListModelObj
                      ?.listItemList[index] ??
                  ListItemModel();
              return ListItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSamuelElla(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: ref
                    .watch(notificationListNotifier)
                    .notificationListModelObj
                    ?.samuelellaItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              SamuelellaItemModel model = ref
                      .watch(notificationListNotifier)
                      .notificationListModelObj
                      ?.samuelellaItemList[index] ??
                  SamuelellaItemModel();
              return SamuelellaItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
