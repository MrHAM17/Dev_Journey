import 'notifier/walkthrough_one_notifier.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';class WalkthroughOneScreen extends ConsumerStatefulWidget {const WalkthroughOneScreen({Key? key}) : super(key: key);

@override WalkthroughOneScreenState createState() =>  WalkthroughOneScreenState();

 }
class WalkthroughOneScreenState extends ConsumerState<WalkthroughOneScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Spacer(), CustomImageView(imagePath: ImageConstant.img10, height: 252.v, width: 365.h), SizedBox(height: 42.v), _buildAutoLayoutVertical(context)])))); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), decoration: AppDecoration.fillOnErrorContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 22.v), Container(width: 361.h, margin: EdgeInsets.only(left: 9.h, right: 8.h), child: Text("msg_create_short_videos".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.displayMedium40.copyWith(height: 1.20))), SizedBox(height: 74.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: appTheme.deepOrangeA400, dotColor: appTheme.gray300, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 60.v), CustomElevatedButton(text: "lbl_next".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapNext(context);})])); } 
/// Navigates to the walkthroughTwoScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.walkthroughTwoScreen, ); } 
 }
