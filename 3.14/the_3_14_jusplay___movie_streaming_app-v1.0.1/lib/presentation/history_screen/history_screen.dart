import '../history_screen/widgets/history_item_widget.dart';
import 'bloc/history_bloc.dart';
import 'models/history_item_model.dart';
import 'models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryBloc>(
        create: (context) =>
            HistoryBloc(HistoryState(historyModelObj: HistoryModel()))
              ..add(HistoryInitialEvent()),
        child: HistoryScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 25.v, right: 16.h),
                child: BlocSelector<HistoryBloc, HistoryState, HistoryModel?>(
                    selector: (state) => state.historyModelObj,
                    builder: (context, historyModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.v);
                          },
                          itemCount:
                              historyModelObj?.historyItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            HistoryItemModel model =
                                historyModelObj?.historyItemList[index] ??
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
