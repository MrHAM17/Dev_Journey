import 'models/walkthrough_three_model.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'provider/walkthrough_three_provider.dart';class WalkthroughThreeScreen extends StatefulWidget {const WalkthroughThreeScreen({Key? key}) : super(key: key);

@override WalkthroughThreeScreenState createState() =>  WalkthroughThreeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => WalkthroughThreeProvider(), child: WalkthroughThreeScreen()); } 
 }
class WalkthroughThreeScreenState extends State<WalkthroughThreeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Spacer(), CustomImageView(imagePath: ImageConstant.img8, height: 197.v, width: 363.h), SizedBox(height: 82.v), _buildAutoLayoutVertical(context)])))); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), decoration: AppDecoration.fillOnErrorContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 22.v), Container(width: 306.h, margin: EdgeInsets.only(left: 37.h, right: 36.h), child: Text("msg_go_live_with_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.displayMedium40.copyWith(height: 1.20))), SizedBox(height: 83.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: appTheme.deepOrangeA400, dotColor: appTheme.gray300, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 60.v), CustomElevatedButton(text: "lbl_get_started".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapGetStarted(context);})])); } 
/// Navigates to the letsInScreen when the action is triggered.
onTapGetStarted(BuildContext context) { NavigatorService.pushNamed(AppRoutes.letsInScreen, ); } 
 }
