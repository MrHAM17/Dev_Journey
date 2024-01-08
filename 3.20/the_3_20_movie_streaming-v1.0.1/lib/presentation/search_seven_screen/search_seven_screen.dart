import '../search_seven_screen/widgets/frameseventynine_item_widget.dart';
import '../search_seven_screen/widgets/searchseven_item_widget.dart';
import 'bloc/search_seven_bloc.dart';
import 'models/frameseventynine_item_model.dart';
import 'models/search_seven_model.dart';
import 'models/searchseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';
import 'package:the_3_20_movie_streaming/widgets/custom_search_view.dart';

class SearchSevenScreen extends StatelessWidget {
  const SearchSevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchSevenBloc>(
        create: (context) => SearchSevenBloc(
            SearchSevenState(searchSevenModelObj: SearchSevenModel()))
          ..add(SearchSevenInitialEvent()),
        child: SearchSevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 118.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BlocSelector<
                                            SearchSevenBloc,
                                            SearchSevenState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.searchController,
                                        builder: (context, searchController) {
                                          return CustomSearchView(
                                              controller: searchController,
                                              hintText: "lbl_love".tr);
                                        }),
                                    SizedBox(height: 14.v),
                                    Text("msg_search_result_for".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018),
                                    SizedBox(height: 29.v),
                                    Text("lbl_movies_6".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    _buildSearchSeven(context),
                                    SizedBox(height: 17.v),
                                    _buildFrameSeventyNine(context),
                                    SizedBox(height: 37.v),
                                    Text("lbl_categories_1".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                        height: 60.v,
                                        width: 90.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgThumbnailImage33,
                                                  height: 60.v,
                                                  width: 90.h,
                                                  radius: BorderRadius.circular(
                                                      2.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Opacity(
                                                      opacity: 0.87,
                                                      child: Text("lbl_love".tr,
                                                          style: theme.textTheme
                                                              .bodyMedium)))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSearchSeven(BuildContext context) {
    return BlocSelector<SearchSevenBloc, SearchSevenState, SearchSevenModel?>(
        selector: (state) => state.searchSevenModelObj,
        builder: (context, searchSevenModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 177.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: searchSevenModelObj?.searchsevenItemList.length ?? 0,
              itemBuilder: (context, index) {
                SearchsevenItemModel model =
                    searchSevenModelObj?.searchsevenItemList[index] ??
                        SearchsevenItemModel();
                return SearchsevenItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        });
  }

  /// Section Widget
  Widget _buildFrameSeventyNine(BuildContext context) {
    return BlocSelector<SearchSevenBloc, SearchSevenState, SearchSevenModel?>(
        selector: (state) => state.searchSevenModelObj,
        builder: (context, searchSevenModelObj) {
          return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                  searchSevenModelObj?.frameseventynineItemList.length ?? 0,
                  (index) {
                FrameseventynineItemModel model =
                    searchSevenModelObj?.frameseventynineItemList[index] ??
                        FrameseventynineItemModel();
                return FrameseventynineItemWidget(model,
                    onSelectedChipView: (value) {
                  context.read<SearchSevenBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                });
              }));
        });
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
