import 'bloc/walkthrough_two_bloc.dart';import 'models/walkthrough_two_model.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';class WalkthroughTwoScreen extends StatelessWidget {const WalkthroughTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<WalkthroughTwoBloc>(create: (context) => WalkthroughTwoBloc(WalkthroughTwoState(walkthroughTwoModelObj: WalkthroughTwoModel()))..add(WalkthroughTwoInitialEvent()), child: WalkthroughTwoScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<WalkthroughTwoBloc, WalkthroughTwoState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Spacer(), CustomImageView(imagePath: ImageConstant.img3, height: 287.v, width: 368.h), SizedBox(height: 37.v), _buildAutoLayoutVertical(context)]))));}); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), decoration: AppDecoration.fillOnErrorContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 21.v), SizedBox(width: 380.h, child: Text("msg_find_your_friends".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.displayMedium40.copyWith(height: 1.20))), SizedBox(height: 74.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: appTheme.deepOrangeA400, dotColor: appTheme.gray300, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 60.v), CustomElevatedButton(text: "lbl_next".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapNext(context);})])); } 
/// Navigates to the walkthroughThreeScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.walkthroughThreeScreen, ); } 
 }
