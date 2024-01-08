import '../choose_plan_screen/widgets/chooseplan_item_widget.dart';
import 'bloc/choose_plan_bloc.dart';
import 'models/choose_plan_model.dart';
import 'models/chooseplan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class ChoosePlanScreen extends StatelessWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChoosePlanBloc>(
        create: (context) => ChoosePlanBloc(
            ChoosePlanState(choosePlanModelObj: ChoosePlanModel()))
          ..add(ChoosePlanInitialEvent()),
        child: ChoosePlanScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          SizedBox(
                              width: 191.h,
                              child: Text("msg_choose_your_favorite".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 20.v),
                          _buildChoosePlan(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 324.h, 7.v),
            onTap: () {
              onTapClose(context);
            }));
  }

  /// Section Widget
  Widget _buildChoosePlan(BuildContext context) {
    return BlocSelector<ChoosePlanBloc, ChoosePlanState, ChoosePlanModel?>(
        selector: (state) => state.choosePlanModelObj,
        builder: (context, choosePlanModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 32.v);
              },
              itemCount: choosePlanModelObj?.chooseplanItemList.length ?? 0,
              itemBuilder: (context, index) {
                ChooseplanItemModel model =
                    choosePlanModelObj?.chooseplanItemList[index] ??
                        ChooseplanItemModel();
                return ChooseplanItemWidget(model);
              });
        });
  }

  /// Navigates to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
