import '../saved_page/widgets/saved_item_widget.dart';
import 'bloc/saved_bloc.dart';
import 'models/saved_item_model.dart';
import 'models/saved_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SavedPage extends StatelessWidget {
  const SavedPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SavedBloc>(
      create: (context) => SavedBloc(SavedState(
        savedModelObj: SavedModel(),
      ))
        ..add(SavedInitialEvent()),
      child: SavedPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 24.v,
            right: 16.h,
          ),
          child: BlocSelector<SavedBloc, SavedState, SavedModel?>(
            selector: (state) => state.savedModelObj,
            builder: (context, savedModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 16.v,
                  );
                },
                itemCount: savedModelObj?.savedItemList.length ?? 0,
                itemBuilder: (context, index) {
                  SavedItemModel model =
                      savedModelObj?.savedItemList[index] ?? SavedItemModel();
                  return SavedItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_saved".tr,
      ),
      actions: [
        AppbarSubtitleOne(
          text: "lbl_delete".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }
}
