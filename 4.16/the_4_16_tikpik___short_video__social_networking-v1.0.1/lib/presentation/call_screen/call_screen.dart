import 'controller/call_controller.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';class CallScreen extends GetWidget<CallController> {const CallScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 48.v), child: Column(children: [SizedBox(height: 28.v), _buildWidget(), SizedBox(height: 46.v), Text("lbl_theresa_varnes".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 26.v), Opacity(opacity: 0.8, child: Text("lbl_07_39_minutes".tr, style: CustomTextStyles.titleMediumErrorContainerMedium)), SizedBox(height: 77.v), Padding(padding: EdgeInsets.symmetric(horizontal: 39.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 80.adaptSize, width: 80.adaptSize, padding: EdgeInsets.all(22.h), decoration: IconButtonStyleHelper.gradientDeepOrangeAToOrangeTL401, child: CustomImageView(imagePath: ImageConstant.imgCloseOnerrorcontainer80x80)), Padding(padding: EdgeInsets.only(left: 24.h), child: CustomIconButton(height: 80.adaptSize, width: 80.adaptSize, padding: EdgeInsets.all(22.h), decoration: IconButtonStyleHelper.gradientDeepPurpleAToOnError, child: CustomImageView(imagePath: ImageConstant.imgVideo1))), Padding(padding: EdgeInsets.only(left: 24.h), child: CustomIconButton(height: 80.adaptSize, width: 80.adaptSize, padding: EdgeInsets.all(22.h), decoration: IconButtonStyleHelper.gradientOnPrimaryContainerToOrangeA, child: CustomImageView(imagePath: ImageConstant.imgUserOnerrorcontainer80x80)))]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 427.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup, margin: EdgeInsets.fromLTRB(28.h, 16.v, 380.h, 16.v))); } 
/// Section Widget
Widget _buildWidget() { return Container(padding: EdgeInsets.symmetric(horizontal: 68.h, vertical: 94.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroupDeepOrange200), fit: BoxFit.cover)), child: Container(height: 230.adaptSize, width: 230.adaptSize, padding: EdgeInsets.all(15.h), decoration: AppDecoration.gradientDeepOrangeAToOrange.copyWith(borderRadius: BorderRadiusStyle.circleBorder115), child: CustomImageView(imagePath: ImageConstant.imgEllipse200x200, height: 200.adaptSize, width: 200.adaptSize, radius: BorderRadius.circular(100.h), alignment: Alignment.center))); } 
 }
