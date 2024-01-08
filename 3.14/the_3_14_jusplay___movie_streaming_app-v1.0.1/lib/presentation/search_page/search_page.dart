import '../search_page/widgets/frame3_item_widget.dart';
import '../search_page/widgets/frame5_item_widget.dart';
import '../search_page/widgets/frame6_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/frame3_item_model.dart';
import 'models/frame5_item_model.dart';
import 'models/frame6_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              _buildFrame(context),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_popular".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 9.v),
                    _buildFrame1(context),
                    SizedBox(height: 25.v),
                    Text(
                      "msg_recommendations".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 10.v),
                    _buildFrame2(context),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      centerTitle: true,
      title: BlocSelector<SearchBloc, SearchState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            hintText: "msg_search_by_title".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recent_searches".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 11.v),
          BlocSelector<SearchBloc, SearchState, SearchModel?>(
            selector: (state) => state.searchModelObj,
            builder: (context, searchModelObj) {
              return Wrap(
                runSpacing: 12.v,
                spacing: 12.h,
                children: List<Widget>.generate(
                  searchModelObj?.frame3ItemList.length ?? 0,
                  (index) {
                    Frame3ItemModel model =
                        searchModelObj?.frame3ItemList[index] ??
                            Frame3ItemModel();

                    return Frame3ItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<SearchBloc>().add(UpdateChipViewEvent(
                            index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
      height: 135.v,
      child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
        selector: (state) => state.searchModelObj,
        builder: (context, searchModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: searchModelObj?.frame5ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Frame5ItemModel model =
                  searchModelObj?.frame5ItemList[index] ?? Frame5ItemModel();
              return Frame5ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return SizedBox(
      height: 135.v,
      child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
        selector: (state) => state.searchModelObj,
        builder: (context, searchModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: searchModelObj?.frame6ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Frame6ItemModel model =
                  searchModelObj?.frame6ItemList[index] ?? Frame6ItemModel();
              return Frame6ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
