import '../see_more_seven_screen/widgets/seemoreseven_item_widget.dart';
import 'models/see_more_seven_model.dart';
import 'models/seemoreseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'provider/see_more_seven_provider.dart';

class SeeMoreSevenScreen extends StatefulWidget {
  const SeeMoreSevenScreen({Key? key}) : super(key: key);

  @override
  SeeMoreSevenScreenState createState() => SeeMoreSevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SeeMoreSevenProvider(),
        child: SeeMoreSevenScreen());
  }
}

class SeeMoreSevenScreenState extends State<SeeMoreSevenScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 29.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_trending_movies".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 18.v),
                      _buildSeeMoreSeven(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Selector<SeeMoreSevenProvider, TextEditingController?>(
            selector: (context, provider) => provider.searchController,
            builder: (context, searchController, child) {
              return AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 12.h),
                  hintText: "msg_search_in_action".tr,
                  controller: searchController);
            }));
  }

  /// Section Widget
  Widget _buildSeeMoreSeven(BuildContext context) {
    return Expanded(child:
        Consumer<SeeMoreSevenProvider>(builder: (context, provider, child) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 177.v,
              crossAxisCount: 3,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h),
          physics: BouncingScrollPhysics(),
          itemCount: provider.seeMoreSevenModelObj.seemoresevenItemList.length,
          itemBuilder: (context, index) {
            SeemoresevenItemModel model =
                provider.seeMoreSevenModelObj.seemoresevenItemList[index];
            return SeemoresevenItemWidget(model, onTapMovieCard: () {
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
