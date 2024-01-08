import '../go_live_together_bottomsheet/widgets/golivetogether_item_widget.dart';
import 'bloc/go_live_together_bloc.dart';
import 'models/go_live_together_model.dart';
import 'models/golivetogether_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class GoLiveTogetherBottomsheet extends StatelessWidget {
  const GoLiveTogetherBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<GoLiveTogetherBloc>(
      create: (context) => GoLiveTogetherBloc(GoLiveTogetherState(
        goLiveTogetherModelObj: GoLiveTogetherModel(),
      ))
        ..add(GoLiveTogetherInitialEvent()),
      child: GoLiveTogetherBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 26.v),
          Text(
            "msg_go_live_together".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 21.v),
          Divider(),
          SizedBox(height: 26.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_532_guest_requests".tr,
              style: CustomTextStyles.titleMediumErrorContainer,
            ),
          ),
          SizedBox(height: 22.v),
          _buildGoLiveTogether(context),
          SizedBox(height: 23.v),
          _buildRequest(context),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoLiveTogether(BuildContext context) {
    return BlocSelector<GoLiveTogetherBloc, GoLiveTogetherState,
        GoLiveTogetherModel?>(
      selector: (state) => state.goLiveTogetherModelObj,
      builder: (context, goLiveTogetherModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0.v),
              child: SizedBox(
                width: 380.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray200,
                ),
              ),
            );
          },
          itemCount: goLiveTogetherModelObj?.golivetogetherItemList.length ?? 0,
          itemBuilder: (context, index) {
            GolivetogetherItemModel model =
                goLiveTogetherModelObj?.golivetogetherItemList[index] ??
                    GolivetogetherItemModel();
            return GolivetogetherItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRequest(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_request".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16,
    );
  }
}