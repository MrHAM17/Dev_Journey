import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 5.v),
                        Container(
                            height: 90.adaptSize,
                            width: 90.adaptSize,
                            padding: EdgeInsets.all(19.h),
                            decoration: AppDecoration.white.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder45),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgWarning,
                                height: 41.adaptSize,
                                width: 41.adaptSize,
                                alignment: Alignment.center))
                      ]))));
    });
  }
}
