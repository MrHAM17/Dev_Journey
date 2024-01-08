import 'package:flutter/material.dart';import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';class PrivacyPolicyScreen extends StatelessWidget {const PrivacyPolicyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 6.v), Text("1. Types of Data We Collect", style: theme.textTheme.titleLarge), SizedBox(height: 23.v), SizedBox(width: 377.h, child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", maxLines: 8, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumErrorContainer.copyWith(height: 1.40))), SizedBox(height: 24.v), Text("2. Use of Your Personal Data", style: theme.textTheme.titleLarge), SizedBox(height: 25.v), SizedBox(width: 380.h, child: Text("Magna etiam tempor orci eu lobortis elementum nibh. Vulputate enim nulla aliquet porttitor lacus. Orci sagittis eu volutpat odio. Cras semper auctor neque vitae tempus quam pellentesque nec. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Commodo elit at imperdiet dui. Nisi vitae suscipit tellus mauris a diam. Erat pellentesque adipiscing commodo elit at imperdiet dui. Mi ipsum faucibus vitae aliquet nec ullamcorper. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et.", maxLines: 10, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumErrorContainer.copyWith(height: 1.40))), SizedBox(height: 24.v), Text("3. Disclosure of Your Personal Data", style: theme.textTheme.titleLarge), SizedBox(height: 25.v), SizedBox(width: 375.h, child: Text("Consequat id porta nibh venenatis cras sed. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Nibh tellus molestie nunc non blandit massa. Quam pellentesque nec nam aliquam sem et tortor consequat id. Faucibus vitae aliquet nec ullamcorper sit amet risus. Nunc consequat interdum varius sit amet. Eget magna fermentum iaculis eu non diam phasellus vestibulum. Pulvinar pellentesque habitant morbi tristique senectus et. Lorem donec massa sapien faucibus et molestie. Massa tempor nec feugiat nisl pretium fusce id. Lacinia at quis risus sed vulputate odio. Integer vitae justo eget magna fermentum iaculis. Eget gravida cum sociis natoque penatibus et magnis.", maxLines: 13, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumErrorContainer.copyWith(height: 1.40)))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Privacy Policy", margin: EdgeInsets.only(left: 16.h))); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
