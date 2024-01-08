import 'models/splash_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'provider/splash_provider.dart';class SplashScreen extends StatefulWidget {const SplashScreen({Key? key}) : super(key: key);

@override SplashScreenState createState() =>  SplashScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SplashProvider(), child: SplashScreen()); } 
 }
class SplashScreenState extends State<SplashScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.walkthroughOneScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(1, 1), end: Alignment(0, 0), colors: [appTheme.deepOrangeA400, appTheme.orange600])), child: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 5.v), CustomImageView(imagePath: ImageConstant.imgVectorOnerrorcontainer, height: 103.v, width: 100.h)]))))); } 
 }
