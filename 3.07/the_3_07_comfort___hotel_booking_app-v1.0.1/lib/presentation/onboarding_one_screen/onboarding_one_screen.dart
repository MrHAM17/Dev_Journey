import 'bloc/onboarding_one_bloc.dart';import 'models/onboarding_one_model.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:the_3_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_3_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';class OnboardingOneScreen extends StatelessWidget {const OnboardingOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OnboardingOneBloc>(create: (context) => OnboardingOneBloc(OnboardingOneState(onboardingOneModelObj: OnboardingOneModel()))..add(OnboardingOneInitialEvent()), child: OnboardingOneScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle1420x428, height: 420.v, width: 428.h), SizedBox(height: 37.v), _buildInfo(context), SizedBox(height: 98.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.blueGray900, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 32.v), _buildFiftyOne(context), SizedBox(height: 5.v)]))));}); } 
/// Section Widget
Widget _buildInfo(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 43.h), child: Column(children: [Container(width: 307.h, margin: EdgeInsets.only(left: 16.h, right: 17.h), child: Text("msg_travel_safely_comfortably".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineLarge!.copyWith(height: 1.50))), SizedBox(height: 6.v), SizedBox(width: 341.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50)))])); } 
/// Section Widget
Widget _buildFiftyOne(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(width: 180.h, text: "lbl_skip".tr, buttonStyle: CustomButtonStyles.fillBlueGray, onPressed: () {onTapSkip(context);}), CustomElevatedButton(width: 180.h, text: "lbl_next".tr, margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapNext(context);})])); } 
/// Navigates to the letSYouInScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.letSYouInScreen, ); } 
/// Navigates to the onboardingTwoScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingTwoScreen, ); } 
 }