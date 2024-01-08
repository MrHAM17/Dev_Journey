import '../downloaded_page/widgets/downloaded_item_widget.dart';
import 'bloc/downloaded_bloc.dart';
import 'models/downloaded_item_model.dart';
import 'models/downloaded_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DownloadedPage extends StatelessWidget {
  const DownloadedPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DownloadedBloc>(
      create: (context) => DownloadedBloc(DownloadedState(
        downloadedModelObj: DownloadedModel(),
      ))
        ..add(DownloadedInitialEvent()),
      child: DownloadedPage(),
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
            top: 25.v,
            right: 16.h,
          ),
          child:
              BlocSelector<DownloadedBloc, DownloadedState, DownloadedModel?>(
            selector: (state) => state.downloadedModelObj,
            builder: (context, downloadedModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 18.v,
                  );
                },
                itemCount: downloadedModelObj?.downloadedItemList.length ?? 0,
                itemBuilder: (context, index) {
                  DownloadedItemModel model =
                      downloadedModelObj?.downloadedItemList[index] ??
                          DownloadedItemModel();
                  return DownloadedItemWidget(
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
      height: 48.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_download".tr,
      ),
    );
  }
}
