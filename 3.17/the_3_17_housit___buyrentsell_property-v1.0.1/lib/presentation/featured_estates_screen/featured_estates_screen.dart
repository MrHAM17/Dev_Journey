import '../featured_estates_screen/widgets/featuredestates_item_widget.dart';import 'bloc/featured_estates_bloc.dart';import 'models/featured_estates_model.dart';import 'models/featuredestates_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_search_view.dart';class FeaturedEstatesScreen extends StatelessWidget {const FeaturedEstatesScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FeaturedEstatesBloc>(create: (context) => FeaturedEstatesBloc(FeaturedEstatesState(featuredEstatesModelObj: FeaturedEstatesModel()))..add(FeaturedEstatesInitialEvent()), child: FeaturedEstatesScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 10.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 18.v), child: Column(children: [_buildBackground(context), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_featured_estates".tr, style: theme.textTheme.headlineSmall))), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_our_recommended".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 11.v), Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: BlocSelector<FeaturedEstatesBloc, FeaturedEstatesState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "msg_search_in_featured".tr, contentPadding: EdgeInsets.symmetric(vertical: 21.v));})), SizedBox(height: 16.v), _buildItemHeader(context), SizedBox(height: 20.v), _buildFeaturedEstates(context)]))))])))); } 
/// Section Widget
Widget _buildBackground(BuildContext context) { return SizedBox(height: 320.v, width: 355.h, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.centerLeft, child: SizedBox(height: 320.v, width: 235.h, child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape, height: 320.v, width: 235.h, alignment: Alignment.center), Padding(padding: EdgeInsets.only(left: 14.h, bottom: 24.v), child: CustomIconButton(height: 53.adaptSize, width: 53.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillOrange, alignment: Alignment.bottomLeft, child: CustomImageView(imagePath: ImageConstant.imgSignal)))]))), CustomImageView(imagePath: ImageConstant.imgShape100x110, height: 100.v, width: 110.h, alignment: Alignment.bottomRight), CustomImageView(imagePath: ImageConstant.imgShape210x110, height: 210.v, width: 110.h, alignment: Alignment.topRight), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 256.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(16.h), decoration: IconButtonStyleHelper.fillWhiteA, onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeft)), CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.fillWhiteA, child: CustomImageView(imagePath: ImageConstant.imgIconSetting))])))])); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 11.v, bottom: 6.v), child: Text("lbl_70".tr, style: CustomTextStyles.titleMediumRedA200)), Padding(padding: EdgeInsets.only(left: 5.h, top: 9.v, bottom: 8.v), child: Text("lbl_estates".tr, style: CustomTextStyles.titleMediumMedium)), Spacer(), Container(width: 93.h, padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgGrid, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center)), Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgIconHorizontal, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center))]))])); } 
/// Section Widget
Widget _buildFeaturedEstates(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: BlocSelector<FeaturedEstatesBloc, FeaturedEstatesState, FeaturedEstatesModel?>(selector: (state) => state.featuredEstatesModelObj, builder: (context, featuredEstatesModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 232.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: NeverScrollableScrollPhysics(), itemCount: featuredEstatesModelObj?.featuredestatesItemList.length ?? 0, itemBuilder: (context, index) {FeaturedestatesItemModel model = featuredEstatesModelObj?.featuredestatesItemList[index] ?? FeaturedestatesItemModel(); return FeaturedestatesItemWidget(model, onTapEstatesCardVertical: () {onTapEstatesCardVertical(context);});});})); } 
/// Navigates to the realEstatesListByCategoryScreen when the action is triggered.
onTapEstatesCardVertical(BuildContext context) { NavigatorService.pushNamed(AppRoutes.realEstatesListByCategoryScreen); } 

/// Navigates to the previous screen.
onTapBtnArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
