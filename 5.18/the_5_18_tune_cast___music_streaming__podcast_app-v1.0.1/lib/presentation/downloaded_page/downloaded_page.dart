import '../downloaded_page/widgets/downloaded_item_widget.dart';
import 'models/downloaded_item_model.dart';
import 'models/downloaded_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
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

class DownloadedPageState extends State<DownloadedPage>
    with AutomaticKeepAliveClientMixin<DownloadedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildAutoLayoutHorizontal(context),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      _buildDownloaded(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "lbl_recently_added".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDownloaded(BuildContext context) {
    return Consumer<DownloadedProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: provider.downloadedModelObj.downloadedItemList.length,
          itemBuilder: (context, index) {
            DownloadedItemModel model =
                provider.downloadedModelObj.downloadedItemList[index];
            return DownloadedItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
