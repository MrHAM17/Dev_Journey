import '../see_more_six_screen/widgets/seemoresix_item_widget.dart';
import 'models/see_more_six_model.dart';
import 'models/seemoresix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'provider/see_more_six_provider.dart';

class SeeMoreSixScreen extends StatefulWidget {
  const SeeMoreSixScreen({Key? key}) : super(key: key);

  @override
  SeeMoreSixScreenState createState() => SeeMoreSixScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SeeMoreSixProvider(), child: SeeMoreSixScreen());
  }
}

class SeeMoreSixScreenState extends State<SeeMoreSixScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.v),
                      Text("lbl_action_movies".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 20.v),
                      _buildSeeMoreSix(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_action".tr, margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildSeeMoreSix(BuildContext context) {
    return Expanded(child:
        Consumer<SeeMoreSixProvider>(builder: (context, provider, child) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 165.v,
              crossAxisCount: 3,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h),
          physics: BouncingScrollPhysics(),
          itemCount: provider.seeMoreSixModelObj.seemoresixItemList.length,
          itemBuilder: (context, index) {
            SeemoresixItemModel model =
                provider.seeMoreSixModelObj.seemoresixItemList[index];
            return SeemoresixItemWidget(model, onTapMovieCard: () {
              onTapMovieCard(context);
            });
          });
    }));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
