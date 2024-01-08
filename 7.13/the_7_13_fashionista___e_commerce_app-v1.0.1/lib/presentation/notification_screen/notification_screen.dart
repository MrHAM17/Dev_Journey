import '../notification_screen/widgets/today_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  List todayItemList = [
    {'id': 1, 'groupBy': "Today"},
    {'id': 2, 'groupBy': "Today"},
    {'id': 3, 'groupBy': "Today"},
    {'id': 4, 'groupBy': "Yesterday"},
    {'id': 5, 'groupBy': "Yesterday"},
    {'id': 6, 'groupBy': "Yesterday"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.fromLTRB(16.h, 25.v, 16.h, 5.v),
                child: GroupedListView<dynamic, String>(
                    shrinkWrap: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements: todayItemList,
                    groupBy: (element) => element['groupBy'],
                    sort: false,
                    groupSeparatorBuilder: (String value) {
                      return Padding(
                          padding: EdgeInsets.only(top: 25.v, bottom: 12.v),
                          child: Column(children: [
                            Text(value,
                                style: theme.textTheme.titleMedium!
                                    .copyWith(color: theme.colorScheme.primary))
                          ]));
                    },
                    itemBuilder: (context, model) {
                      return TodayItemWidget();
                    },
                    separator: SizedBox(height: 16.v)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Notifications"));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
