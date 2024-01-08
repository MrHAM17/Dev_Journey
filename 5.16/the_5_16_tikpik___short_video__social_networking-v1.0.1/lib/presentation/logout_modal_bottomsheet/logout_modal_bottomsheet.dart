import 'models/logout_modal_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'provider/logout_modal_provider.dart';class LogoutModalBottomsheet extends StatefulWidget {const LogoutModalBottomsheet({Key? key}) : super(key: key);

@override LogoutModalBottomsheetState createState() =>  LogoutModalBottomsheetState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => LogoutModalProvider(), child: LogoutModalBottomsheet()); } 
 }
class LogoutModalBottomsheetState extends State<LogoutModalBottomsheet> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return _buildAutoLayoutVertical(context); } 
/// Section Widget
Widget _buildCancel(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgFrameGray300, height: 3.v, width: 38.h), SizedBox(height: 27.v), Text("lbl_logout".tr, style: CustomTextStyles.headlineSmallRedA200), SizedBox(height: 46.v), Text("msg_are_you_sure_you".tr, style: CustomTextStyles.titleLargeErrorContainer), SizedBox(height: 22.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(width: 166.h, text: "lbl_cancel".tr, buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapCancel(context);}), CustomElevatedButton(width: 166.h, text: "lbl_yes_log_out".tr, margin: EdgeInsets.only(left: 24.h), buttonStyle: CustomButtonStyles.fillSecondaryContainer, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16)])]))); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: theme.colorScheme.onErrorContainer, shape: RoundedRectangleBorder(side: BorderSide(color: appTheme.gray100, width: 1.h), borderRadius: BorderRadiusStyle.customBorderTL40), child: Container(height: 266.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 7.v), decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 80.v), child: SizedBox(width: 380.h, child: Divider()))), _buildCancel(context)]))); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapCancel(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
