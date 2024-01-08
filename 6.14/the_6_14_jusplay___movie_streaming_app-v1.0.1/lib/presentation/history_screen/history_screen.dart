import '../history_screen/widgets/history_item_widget.dart';
import 'models/history_item_model.dart';
import 'notifier/history_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  HistoryScreenState createState() => HistoryScreenState();
}

class HistoryScreenState extends ConsumerState<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 25.v, right: 16.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: ref
                              .watch(historyNotifier)
                              .historyModelObj
                              ?.historyItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        HistoryItemModel model = ref
                                .watch(historyNotifier)
                                .historyModelObj
                                ?.historyItemList[index] ??
                            HistoryItemModel();
                        return HistoryItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_history".tr));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
