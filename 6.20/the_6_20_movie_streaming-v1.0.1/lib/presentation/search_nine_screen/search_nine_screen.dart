import '../search_nine_screen/widgets/searchnine_item_widget.dart';
import 'models/searchnine_item_model.dart';
import 'notifier/search_nine_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_20_movie_streaming/widgets/custom_search_view.dart';

class SearchNineScreen extends ConsumerStatefulWidget {
  const SearchNineScreen({Key? key}) : super(key: key);

  @override
  SearchNineScreenState createState() => SearchNineScreenState();
}

class SearchNineScreenState extends ConsumerState<SearchNineScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Consumer(builder: (context, ref, _) {
                            return CustomSearchView(
                                controller: ref
                                    .watch(searchNineNotifier)
                                    .searchController,
                                hintText: "msg_search_for_movies".tr);
                          }),
                          SizedBox(height: 32.v),
                          _buildSearchNine(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_search".tr, margin: EdgeInsets.only(left: 16.h)),
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
  Widget _buildSearchNine(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 177.v,
              crossAxisCount: 3,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: ref
                  .watch(searchNineNotifier)
                  .searchNineModelObj
                  ?.searchnineItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            SearchnineItemModel model = ref
                    .watch(searchNineNotifier)
                    .searchNineModelObj
                    ?.searchnineItemList[index] ??
                SearchnineItemModel();
            return SearchnineItemWidget(model, onTapMovieCard: () {
              onTapMovieCard(context);
            });
          });
    });
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
