import 'bloc/promotion_bloc.dart';import 'models/promotion_model.dart';import 'package:flutter/material.dart';import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';class PromotionScreen extends StatelessWidget {const PromotionScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PromotionBloc>(create: (context) => PromotionBloc(PromotionState(promotionModelObj: PromotionModel()))..add(PromotionInitialEvent()), child: PromotionScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<PromotionBloc, PromotionState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 32.v), child: Column(children: [_buildItemPromotion(context), SizedBox(height: 22.v), Container(width: 327.h, margin: EdgeInsets.symmetric(horizontal: 24.h), child: Text("msg_limited_time_halloween".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCalendarGreenA400, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("msg_october_27_2022".tr, style: theme.textTheme.bodySmall))]))), SizedBox(height: 18.v), _buildCardCoupon(context), SizedBox(height: 26.v), _buildStartExplore(context)])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgTwitter, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v))]); } 
/// Section Widget
Widget _buildItemPromotion(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: theme.colorScheme.primary, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 200.v, width: 327.h, padding: EdgeInsets.symmetric(vertical: 1.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 22.h, top: 36.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 91.h, child: Text("msg_halloween_sale".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumWhiteA700_1.copyWith(height: 1.50))), SizedBox(height: 7.v), Text("msg_all_discount_up".tr, style: CustomTextStyles.bodySmallWhiteA700)]))), CustomImageView(imagePath: ImageConstant.imgSubtract145x207, height: 164.v, width: 207.h, alignment: Alignment.bottomRight)]))); } 
/// Section Widget
Widget _buildCardCoupon(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.gradientGreenAToTealA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 53.adaptSize, width: 53.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillGreenA, child: CustomImageView(imagePath: ImageConstant.imgTelevisionWhiteA70053x53)), Padding(padding: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_hlwn40".tr, style: CustomTextStyles.titleMediumBold), SizedBox(height: 7.v), Text("msg_use_this_coupon".tr, style: theme.textTheme.labelSmall)]))])); } 
/// Section Widget
Widget _buildStartExplore(BuildContext context) { return SizedBox(height: 250.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: SizedBox(width: 323.h, child: Text("msg_lorem_ipsum_dolor8".tr, maxLines: 12, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.50)))), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 3.v), padding: EdgeInsets.all(24.h), decoration: AppDecoration.linear, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 65.v), CustomElevatedButton(text: "lbl_start_explore".tr)])))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }