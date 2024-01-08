import '../downloaded_page/widgets/downloaded_item_widget.dart';
import 'models/downloaded_item_model.dart';
import 'models/downloaded_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/downloaded_provider.dart';

// ignore_for_file: must_be_immutable
class DownloadedPage extends StatefulWidget {
  const DownloadedPage({Key? key})
      : super(
          key: key,
        );

  @override
  DownloadedPageState createState() => DownloadedPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DownloadedProvider(),
      child: DownloadedPage(),
    );
  }
}

class DownloadedPageState extends State<DownloadedPage> {
  @override
  void initState() {
    super.initState();
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
          child: Consumer<DownloadedProvider>(
            builder: (context, provider, child) {
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
                itemCount:
                    provider.downloadedModelObj.downloadedItemList.length,
                itemBuilder: (context, index) {
                  DownloadedItemModel model =
                      provider.downloadedModelObj.downloadedItemList[index];
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
