import 'models/create_new_pin_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_pin_code_text_field.dart';import 'provider/create_new_pin_provider.dart';class CreateNewPinScreen extends StatefulWidget {const CreateNewPinScreen({Key? key}) : super(key: key);

@override CreateNewPinScreenState createState() =>  CreateNewPinScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CreateNewPinProvider(), child: CreateNewPinScreen()); } 
 }
class CreateNewPinScreenState extends State<CreateNewPinScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 138.v), child: Column(children: [Container(width: 331.h, margin: EdgeInsets.symmetric(horizontal: 24.h), child: Text("msg_add_a_pin_number".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 79.v), Padding(padding: EdgeInsets.only(right: 18.h), child: Selector<CreateNewPinProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), Spacer(flex: 35), CustomElevatedButton(text: "lbl_continue".tr, onPressed: () {onTapContinue(context);}), Spacer(flex: 64)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 49.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_create_new_pin".tr, margin: EdgeInsets.only(left: 16.h))); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the setFingerprintScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setFingerprintScreen, ); } 
 }
