import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_icon_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {EditProfileScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [SizedBox(height: 100.adaptSize, width: 100.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle361100x100, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.outlineGrayTL121, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgTelevisionGray50))])), SizedBox(height: 33.v), _buildInput(context), SizedBox(height: 17.v), _buildInput1(context), SizedBox(height: 17.v), _buildInput2(context), SizedBox(height: 17.v), _buildInput3(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Edit Profile"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildInput(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Full Name", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), CustomTextFormField(controller: fullNameController, hintText: "Andrew Preston")]); } 
/// Section Widget
Widget _buildInput1(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Email", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), CustomTextFormField(controller: emailController, hintText: "test@gmail.com", textInputType: TextInputType.emailAddress)]); } 
/// Section Widget
Widget _buildInput2(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Address", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), CustomTextFormField(controller: addressController, hintText: "Merta Nadi Street 88, Kuta, Bali")]); } 
/// Section Widget
Widget _buildInput3(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Password", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), CustomTextFormField(controller: passwordController, hintText: "123456", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true)]); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "Save Change")); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
