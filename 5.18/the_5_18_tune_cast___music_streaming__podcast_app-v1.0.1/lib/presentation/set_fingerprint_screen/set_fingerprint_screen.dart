import 'models/set_fingerprint_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';import 'provider/set_fingerprint_provider.dart';class SetFingerprintScreen extends StatefulWidget {const SetFingerprintScreen({Key? key}) : super(key: key);

@override SetFingerprintScreenState createState() =>  SetFingerprintScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SetFingerprintProvider(), child: SetFingerprintScreen()); } 
 }
class SetFingerprintScreenState extends State<SetFingerprintScreen> {@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.followArtistsScreen, );NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), child: Column(children: [SizedBox(height: 47.v), Container(width: 323.h, margin: EdgeInsets.symmetric(horizontal: 28.h), child: Text("msg_add_a_fingerprint".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), Spacer(flex: 49), CustomImageView(imagePath: ImageConstant.imgVector236x228, height: 236.v, width: 228.h), Spacer(flex: 50), Container(width: 324.h, margin: EdgeInsets.symmetric(horizontal: 27.h), child: Text("msg_please_put_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 73.v), _buildFrame(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_set_your_fingerprint".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 10.h), onPressed: () {onTapSkip(context);})), Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 10.h), onPressed: () {onTapContinue(context);}))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the followArtistsScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.followArtistsScreen, ); } 
 }
