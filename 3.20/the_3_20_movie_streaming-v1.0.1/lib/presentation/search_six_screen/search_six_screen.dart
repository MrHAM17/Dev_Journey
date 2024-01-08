import '../search_six_screen/widgets/movies7_item_widget.dart';
import '../search_six_screen/widgets/movies8_item_widget.dart';
import '../search_six_screen/widgets/movies9_item_widget.dart';
import 'bloc/search_six_bloc.dart';
import 'models/movies7_item_model.dart';
import 'models/movies8_item_model.dart';
import 'models/movies9_item_model.dart';
import 'models/search_six_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';
import 'package:the_3_20_movie_streaming/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:the_3_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class SearchSixScreen extends StatelessWidget {
  const SearchSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchSixBloc>(
        create: (context) =>
            SearchSixBloc(SearchSixState(searchSixModelObj: SearchSixModel()))
              ..add(SearchSixInitialEvent()),
        child: SearchSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
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
                              _buildMovies(context),
                              SizedBox(height: 26.v),
                              _buildMovies1(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title:
            BlocSelector<SearchSixBloc, SearchSixState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return AppbarTitleSearchviewOne(
                      hintText: "lbl_love".tr, controller: searchController);
                }));
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 223.v,
        child: BlocSelector<SearchSixBloc, SearchSixState, SearchSixModel?>(
            selector: (state) => state.searchSixModelObj,
            builder: (context, searchSixModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: searchSixModelObj?.movies7ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Movies7ItemModel model =
                        searchSixModelObj?.movies7ItemList[index] ??
                            Movies7ItemModel();
                    return Movies7ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildMovies1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_tv_channels".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 18.v),
      SizedBox(
          height: 223.v,
          child: BlocSelector<SearchSixBloc, SearchSixState, SearchSixModel?>(
              selector: (state) => state.searchSixModelObj,
              builder: (context, searchSixModelObj) {
                return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: searchSixModelObj?.movies8ItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      Movies8ItemModel model =
                          searchSixModelObj?.movies8ItemList[index] ??
                              Movies8ItemModel();
                      return Movies8ItemWidget(model, onTapMovieCard: () {
                        onTapMovieCard(context);
                      });
                    });
              })),
      SizedBox(height: 27.v),
      Text("lbl_playlist".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 17.v),
      SizedBox(
          height: 223.v,
          child: BlocSelector<SearchSixBloc, SearchSixState, SearchSixModel?>(
              selector: (state) => state.searchSixModelObj,
              builder: (context, searchSixModelObj) {
                return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: searchSixModelObj?.movies9ItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      Movies9ItemModel model =
                          searchSixModelObj?.movies9ItemList[index] ??
                              Movies9ItemModel();
                      return Movies9ItemWidget(model, onTapMovieCard: () {
                        onTapMovieCard(context);
                      });
                    });
              }))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
