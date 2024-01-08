import '../notification_list_page/widgets/category_item_widget.dart';
import '../notification_list_page/widgets/list_item_widget.dart';
import '../notification_list_page/widgets/samuelella_item_widget.dart';
import 'models/category_item_model.dart';
import 'models/list_item_model.dart';
import 'models/notification_list_model.dart';
import 'models/samuelella_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'provider/notification_list_provider.dart';

// ignore_for_file: must_be_immutable
class NotificationListPage extends StatefulWidget {
  const NotificationListPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationListPageState createState() => NotificationListPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationListProvider(),
      child: NotificationListPage(),
    );
  }
}

class NotificationListPageState extends State<NotificationListPage>
    with AutomaticKeepAliveClientMixin<NotificationListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

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
      child: Consumer<NotificationListProvider>(
        builder: (context, provider, child) {
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
            itemCount:
                provider.notificationListModelObj.categoryItemList.length,
            itemBuilder: (context, index) {
              CategoryItemModel model =
                  provider.notificationListModelObj.categoryItemList[index];
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
      child: Consumer<NotificationListProvider>(
        builder: (context, provider, child) {
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
            itemCount: provider.notificationListModelObj.listItemList.length,
            itemBuilder: (context, index) {
              ListItemModel model =
                  provider.notificationListModelObj.listItemList[index];
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
      child: Consumer<NotificationListProvider>(
        builder: (context, provider, child) {
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
            itemCount:
                provider.notificationListModelObj.samuelellaItemList.length,
            itemBuilder: (context, index) {
              SamuelellaItemModel model =
                  provider.notificationListModelObj.samuelellaItemList[index];
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
