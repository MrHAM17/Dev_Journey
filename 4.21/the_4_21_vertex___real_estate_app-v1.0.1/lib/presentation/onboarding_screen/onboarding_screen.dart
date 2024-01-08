import 'controller/onboarding_controller.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {OnboardingScreen({Key? key}) : super(key: key);

PageController pageController = PageController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, backgroundColor: appTheme.gray300, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: appTheme.gray300, image: DecorationImage(image: AssetImage(ImageConstant.imgOnboarding), fit: BoxFit.cover)), child: Container(height: 768.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 58.v), child: Stack(children: [SizedBox(height: 768.v, child: PageView(controller: pageController, scrollDirection: Axis.horizontal, children: [Container(height: 768.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.gray300, image: DecorationImage(image: AssetImage(ImageConstant.imgOnboarding), fit: BoxFit.cover)))])), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 58.v), child: Column(mainAxisSize: MainAxisSize.min, children: [Spacer(), _buildFortySeven()]))]))))); } 
/// Section Widget
Widget _buildFortySeven() { return Column(children: [Container(decoration: AppDecoration.outlineBlackF, child: Text("msg_enjoy_the_beautiful".tr, style: CustomTextStyles.headlineSmallGray300)), SizedBox(height: 17.v), Container(width: 318.h, margin: EdgeInsets.only(left: 4.h, right: 3.h), child: Text("msg_lorem_ipsum_is_simply".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallGray300.copyWith(height: 1.50))), SizedBox(height: 29.v), SmoothPageIndicator(controller: pageController, count: 2, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(activeDotColor: Color(0X1212121D), dotHeight: 6.v), onDotClicked: (value) {pageController.jumpToPage(value);}), SizedBox(height: 40.v), CustomElevatedButton(text: "lbl_get_started".tr, onPressed: () {onTapGetStarted();})]); } 
/// Navigates to the signInScreen when the action is triggered.
onTapGetStarted() { Get.toNamed(AppRoutes.signInScreen, ); } 
 }
