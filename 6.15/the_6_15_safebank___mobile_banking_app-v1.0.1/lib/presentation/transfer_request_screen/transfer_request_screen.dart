import '../transfer_request_screen/widgets/transferrequest_item_widget.dart';
import 'models/transferrequest_item_model.dart';
import 'notifier/transfer_request_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_search_view.dart';

class TransferRequestScreen extends ConsumerStatefulWidget {
  const TransferRequestScreen({Key? key}) : super(key: key);

  @override
  TransferRequestScreenState createState() => TransferRequestScreenState();
}

class TransferRequestScreenState extends ConsumerState<TransferRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  _buildThirtyThree(context),
                  SizedBox(height: 20.v),
                  Consumer(builder: (context, ref, _) {
                    return CustomSearchView(
                        controller:
                            ref.watch(transferRequestNotifier).searchController,
                        hintText: "lbl_search_people".tr);
                  }),
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_contact_people".tr,
                          style: CustomTextStyles.titleMediumSemiBold)),
                  SizedBox(height: 13.v),
                  _buildTransferRequest(context)
                ]))));
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
        title: AppbarSubtitle(text: "msg_transfer_request".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomElevatedButton(
          height: 40.v,
          width: 125.h,
          text: "lbl_transfer".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 9.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose1,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.fillIndigoA,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700),
      CustomElevatedButton(
          height: 40.v,
          width: 125.h,
          text: "lbl_request".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose2,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.fillGreen,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700),
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillGray,
          child: CustomImageView(imagePath: ImageConstant.imgMore))
    ]);
  }

  /// Section Widget
  Widget _buildTransferRequest(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.v);
          },
          itemCount: ref
                  .watch(transferRequestNotifier)
                  .transferRequestModelObj
                  ?.transferrequestItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            TransferrequestItemModel model = ref
                    .watch(transferRequestNotifier)
                    .transferRequestModelObj
                    ?.transferrequestItemList[index] ??
                TransferrequestItemModel();
            return TransferrequestItemWidget(model);
          });
    });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
