import '../search_six_screen/widgets/movies7_item_widget.dart';
import '../search_six_screen/widgets/movies8_item_widget.dart';
import '../search_six_screen/widgets/movies9_item_widget.dart';
import 'controller/search_six_controller.dart';
import 'models/movies7_item_model.dart';
import 'models/movies8_item_model.dart';
import 'models/movies9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class SearchSixScreen extends GetWidget<SearchSixController> {
  const SearchSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_search_result_for2".tr,
                                  style:
                                      CustomTextStyles.titleMediumWhiteA70018),
                              SizedBox(height: 28.v),
                              Text("lbl_movies".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 18.v),
                              _buildMovies(),
                              SizedBox(height: 26.v),
                              _buildMovies1()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title: AppbarTitleSearchviewOne(
            hintText: "lbl_love".tr, controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildMovies() {
    return SizedBox(
        height: 223.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount:
                controller.searchSixModelObj.value.movies7ItemList.value.length,
            itemBuilder: (context, index) {
              Movies7ItemModel model = controller
                  .searchSixModelObj.value.movies7ItemList.value[index];
              return Movies7ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildMovies1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_tv_channels".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 18.v),
      SizedBox(
          height: 223.v,
          child: Obx(() => ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: controller
                  .searchSixModelObj.value.movies8ItemList.value.length,
              itemBuilder: (context, index) {
                Movies8ItemModel model = controller
                    .searchSixModelObj.value.movies8ItemList.value[index];
                return Movies8ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard();
                });
              }))),
      SizedBox(height: 27.v),
      Text("lbl_playlist".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 17.v),
      SizedBox(
          height: 223.v,
          child: Obx(() => ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: controller
                  .searchSixModelObj.value.movies9ItemList.value.length,
              itemBuilder: (context, index) {
                Movies9ItemModel model = controller
                    .searchSixModelObj.value.movies9ItemList.value[index];
                return Movies9ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard();
                });
              })))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
