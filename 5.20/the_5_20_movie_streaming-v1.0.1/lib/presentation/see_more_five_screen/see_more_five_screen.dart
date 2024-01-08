import '../see_more_five_screen/widgets/seemorefive_item_widget.dart';
import 'models/see_more_five_model.dart';
import 'models/seemorefive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'provider/see_more_five_provider.dart';

class SeeMoreFiveScreen extends StatefulWidget {
  const SeeMoreFiveScreen({Key? key}) : super(key: key);

  @override
  SeeMoreFiveScreenState createState() => SeeMoreFiveScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SeeMoreFiveProvider(), child: SeeMoreFiveScreen());
  }
}

class SeeMoreFiveScreenState extends State<SeeMoreFiveScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgHeroCarImage,
                              height: 220.v,
                              width: 360.h,
                              radius: BorderRadius.circular(2.h)),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_thriller".tr,
                                      style: theme.textTheme.headlineSmall))),
                          SizedBox(height: 20.v),
                          _buildSeeMoreFive(context)
                        ]))))));
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
  Widget _buildSeeMoreFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Consumer<SeeMoreFiveProvider>(builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 165.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  provider.seeMoreFiveModelObj.seemorefiveItemList.length,
              itemBuilder: (context, index) {
                SeemorefiveItemModel model =
                    provider.seeMoreFiveModelObj.seemorefiveItemList[index];
                return SeemorefiveItemWidget(model, onTapMovieCard: () {
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
