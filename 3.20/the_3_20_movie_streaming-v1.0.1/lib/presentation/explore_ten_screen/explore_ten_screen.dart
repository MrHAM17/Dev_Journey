import '../explore_ten_screen/widgets/trending1_item_widget.dart';
import '../explore_ten_screen/widgets/trending2_item_widget.dart';
import '../explore_ten_screen/widgets/trending_item_widget.dart';
import 'bloc/explore_ten_bloc.dart';
import 'models/explore_ten_model.dart';
import 'models/trending1_item_model.dart';
import 'models/trending2_item_model.dart';
import 'models/trending_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';
import 'package:the_3_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_3_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class ExploreTenScreen extends StatelessWidget {
  const ExploreTenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreTenBloc>(
        create: (context) => ExploreTenBloc(
            ExploreTenState(exploreTenModelObj: ExploreTenModel()))
          ..add(ExploreTenInitialEvent()),
        child: ExploreTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_trending_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallWhiteA700)),
                              SizedBox(height: 16.v),
                              _buildTrending(context),
                              SizedBox(height: 26.v),
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_trending_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallWhiteA700)),
                              SizedBox(height: 16.v),
                              _buildTrending1(context),
                              SizedBox(height: 26.v),
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_trending_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallWhiteA700)),
                              SizedBox(height: 16.v),
                              _buildTrending2(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_explore".tr, margin: EdgeInsets.only(left: 16.h)),
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
  Widget _buildTrending(BuildContext context) {
    return SizedBox(
        height: 207.v,
        child: BlocSelector<ExploreTenBloc, ExploreTenState, ExploreTenModel?>(
            selector: (state) => state.exploreTenModelObj,
            builder: (context, exploreTenModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: exploreTenModelObj?.trendingItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    TrendingItemModel model =
                        exploreTenModelObj?.trendingItemList[index] ??
                            TrendingItemModel();
                    return TrendingItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildTrending1(BuildContext context) {
    return SizedBox(
        height: 207.v,
        child: BlocSelector<ExploreTenBloc, ExploreTenState, ExploreTenModel?>(
            selector: (state) => state.exploreTenModelObj,
            builder: (context, exploreTenModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: exploreTenModelObj?.trending1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Trending1ItemModel model =
                        exploreTenModelObj?.trending1ItemList[index] ??
                            Trending1ItemModel();
                    return Trending1ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildTrending2(BuildContext context) {
    return SizedBox(
        height: 207.v,
        child: BlocSelector<ExploreTenBloc, ExploreTenState, ExploreTenModel?>(
            selector: (state) => state.exploreTenModelObj,
            builder: (context, exploreTenModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: exploreTenModelObj?.trending2ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Trending2ItemModel model =
                        exploreTenModelObj?.trending2ItemList[index] ??
                            Trending2ItemModel();
                    return Trending2ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
