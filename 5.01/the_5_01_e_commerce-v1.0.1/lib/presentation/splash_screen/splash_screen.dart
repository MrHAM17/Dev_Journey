import 'models/splash_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'provider/splash_provider.dart';class SplashScreen extends StatefulWidget {const SplashScreen({Key? key}) : super(key: key);

@override SplashScreenState createState() =>  SplashScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SplashProvider(), child: SplashScreen()); } 
 }
class SplashScreenState extends State<SplashScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.loginScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary.withOpacity(1), body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 5.v), CustomImageView(imagePath: ImageConstant.imgLogo, height: 72.adaptSize, width: 72.adaptSize)])))); } 
 }
