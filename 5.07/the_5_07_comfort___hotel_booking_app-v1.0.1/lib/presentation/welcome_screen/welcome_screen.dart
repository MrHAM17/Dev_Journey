import 'models/welcome_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'provider/welcome_provider.dart';class WelcomeScreen extends StatefulWidget {const WelcomeScreen({Key? key}) : super(key: key);

@override WelcomeScreenState createState() =>  WelcomeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => WelcomeProvider(), child: WelcomeScreen()); } 
 }
class WelcomeScreenState extends State<WelcomeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle1, height: 420.v, width: 428.h), SizedBox(height: 76.v), _buildWelcome(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildWelcome(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 32.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_welcome_to".tr, style: theme.textTheme.displayMedium), SizedBox(height: 23.v), Text("lbl_comfort".tr, style: theme.textTheme.displayLarge), SizedBox(height: 40.v), Container(width: 319.h, margin: EdgeInsets.only(right: 44.h), child: Text("msg_the_best_hotel_booking".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(height: 1.50)))])); } 
@override void onReady() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.pushNamed(AppRoutes.onboardingOneScreen, );}); } 
 }
