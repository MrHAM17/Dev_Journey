import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplashScreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 56.h,
                vertical: 225.v,
              ),
              decoration: AppDecoration.gradientGrayToOnPrimary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 16.v),
                  SizedBox(
                    width: 247.h,
                    child: Text(
                      "Watch Your favourite \nMovies everytime and anytime.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeWhiteA700.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 36.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
