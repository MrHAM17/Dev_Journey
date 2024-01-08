import '../choose_your_interest_screen/widgets/sizelargetypeborder_item_widget.dart';import 'bloc/choose_your_interest_bloc.dart';import 'models/choose_your_interest_model.dart';import 'models/sizelargetypeborder_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';class ChooseYourInterestScreen extends StatelessWidget {const ChooseYourInterestScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ChooseYourInterestBloc>(create: (context) => ChooseYourInterestBloc(ChooseYourInterestState(chooseYourInterestModelObj: ChooseYourInterestModel()))..add(ChooseYourInterestInitialEvent()), child: ChooseYourInterestScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 367.h, margin: EdgeInsets.only(right: 12.h), child: Text("msg_choose_your_interests".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumMedium.copyWith(height: 1.40))), SizedBox(height: 46.v), _buildSizeLargeTypeBorder(context), SizedBox(height: 14.v), _buildSizeLargeTypeFilled(context), Spacer(), SizedBox(height: 23.v), _buildAutoLayoutHorizontal(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_choose_your_interest".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildSizeLargeTypeBorder(BuildContext context) { return BlocSelector<ChooseYourInterestBloc, ChooseYourInterestState, ChooseYourInterestModel?>(selector: (state) => state.chooseYourInterestModelObj, builder: (context, chooseYourInterestModelObj) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(chooseYourInterestModelObj?.sizelargetypeborderItemList.length ?? 0, (index) {SizelargetypeborderItemModel model = chooseYourInterestModelObj?.sizelargetypeborderItemList[index] ?? SizelargetypeborderItemModel(); return SizelargetypeborderItemWidget(model, onSelectedChipView: (value) {context.read<ChooseYourInterestBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));}); } 
/// Section Widget
Widget _buildSizeLargeTypeFilled(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 33.h), child: Row(children: [Container(width: 109.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder22), child: Text("lbl_culture".tr, style: CustomTextStyles.titleMediumOnErrorContainer_1)), Container(width: 103.h, margin: EdgeInsets.only(left: 13.h), padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), decoration: AppDecoration.outlineGray600.copyWith(borderRadius: BorderRadiusStyle.roundedBorder22), child: Text("lbl_health".tr, style: CustomTextStyles.titleMediumGray600)), Container(width: 109.h, margin: EdgeInsets.only(left: 13.h), padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), decoration: AppDecoration.outlineGray600.copyWith(borderRadius: BorderRadiusStyle.roundedBorder22), child: Text("lbl_comics".tr, style: CustomTextStyles.titleMediumGray600))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 6.h), buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapSkip(context);})), Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapContinue(context);}))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the tellUsAboutYourselfScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.tellUsAboutYourselfScreen, ); } 
 }