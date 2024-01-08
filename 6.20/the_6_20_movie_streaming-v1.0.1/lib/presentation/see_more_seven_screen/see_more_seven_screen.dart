import '../see_more_seven_screen/widgets/seemoreseven_item_widget.dart';
import 'models/seemoreseven_item_model.dart';
import 'notifier/see_more_seven_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class SeeMoreSevenScreen extends ConsumerStatefulWidget {
  const SeeMoreSevenScreen({Key? key}) : super(key: key);

  @override
  SeeMoreSevenScreenState createState() => SeeMoreSevenScreenState();
}

class SeeMoreSevenScreenState extends ConsumerState<SeeMoreSevenScreen> {
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
        title: Consumer(builder: (context, ref, _) {
          return AppbarTitleSearchview(
              margin: EdgeInsets.only(left: 12.h),
              hintText: "msg_search_in_action".tr,
              controller: ref.watch(seeMoreSevenNotifier).searchController);
        }));
  }

  /// Section Widget
  Widget _buildSeeMoreSeven(BuildContext context) {
    return Expanded(child: Consumer(builder: (context, ref, _) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 177.v,
              crossAxisCount: 3,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h),
          physics: BouncingScrollPhysics(),
          itemCount: ref
                  .watch(seeMoreSevenNotifier)
                  .seeMoreSevenModelObj
                  ?.seemoresevenItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            SeemoresevenItemModel model = ref
                    .watch(seeMoreSevenNotifier)
                    .seeMoreSevenModelObj
                    ?.seemoresevenItemList[index] ??
                SeemoresevenItemModel();
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
