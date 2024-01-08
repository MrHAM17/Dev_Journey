import '../notification_list_page/widgets/category_item_widget.dart';
import '../notification_list_page/widgets/list_item_widget.dart';
import '../notification_list_page/widgets/samuelella_item_widget.dart';
import 'bloc/notification_list_bloc.dart';
import 'models/category_item_model.dart';
import 'models/list_item_model.dart';
import 'models/notification_list_model.dart';
import 'models/samuelella_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationListPage extends StatefulWidget {
  const NotificationListPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationListPageState createState() => NotificationListPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationListBloc>(
      create: (context) => NotificationListBloc(NotificationListState(
        notificationListModelObj: NotificationListModel(),
      ))
        ..add(NotificationListInitialEvent()),
      child: NotificationListPage(),
    );
  }
}

class NotificationListPageState extends State<NotificationListPage>
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
      child: BlocSelector<NotificationListBloc, NotificationListState,
          NotificationListModel?>(
        selector: (state) => state.notificationListModelObj,
        builder: (context, notificationListModelObj) {
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
            itemCount: notificationListModelObj?.categoryItemList.length ?? 0,
            itemBuilder: (context, index) {
              CategoryItemModel model =
                  notificationListModelObj?.categoryItemList[index] ??
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
      child: BlocSelector<NotificationListBloc, NotificationListState,
          NotificationListModel?>(
        selector: (state) => state.notificationListModelObj,
        builder: (context, notificationListModelObj) {
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
            itemCount: notificationListModelObj?.listItemList.length ?? 0,
            itemBuilder: (context, index) {
              ListItemModel model =
                  notificationListModelObj?.listItemList[index] ??
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
      child: BlocSelector<NotificationListBloc, NotificationListState,
          NotificationListModel?>(
        selector: (state) => state.notificationListModelObj,
        builder: (context, notificationListModelObj) {
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
            itemCount: notificationListModelObj?.samuelellaItemList.length ?? 0,
            itemBuilder: (context, index) {
              SamuelellaItemModel model =
                  notificationListModelObj?.samuelellaItemList[index] ??
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
