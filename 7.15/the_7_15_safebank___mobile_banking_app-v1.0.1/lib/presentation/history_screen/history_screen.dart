import '../history_screen/widgets/duration_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key}) : super(key: key);

  List durationItemList = [
    {'id': 1, 'groupBy': "Today, 25 June"},
    {'id': 2, 'groupBy': "Today, 25 June"},
    {'id': 3, 'groupBy': "Today, 25 June"},
    {'id': 4, 'groupBy': "Today, 25 June"},
    {'id': 5, 'groupBy': "Yesterday"},
    {'id': 6, 'groupBy': "Yesterday"},
    {'id': 7, 'groupBy': "Yesterday"},
    {'id': 8, 'groupBy': "20 June, 2022"},
    {'id': 9, 'groupBy': "20 June, 2022"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.fromLTRB(24.h, 25.v, 24.h, 5.v),
                child: GroupedListView<dynamic, String>(
                    shrinkWrap: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements: durationItemList,
                    groupBy: (element) => element['groupBy'],
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
                      return DurationItemWidget();
                    },
                    separator: SizedBox(height: 15.v)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "History"),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgSearchBlack900,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
