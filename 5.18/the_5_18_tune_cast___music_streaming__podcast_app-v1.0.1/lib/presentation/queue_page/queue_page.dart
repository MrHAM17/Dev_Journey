import '../queue_page/widgets/queue_item_widget.dart';
import 'models/queue_item_model.dart';
import 'models/queue_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'provider/queue_provider.dart';

// ignore_for_file: must_be_immutable
class QueuePage extends StatefulWidget {
  const QueuePage({Key? key})
      : super(
          key: key,
        );

  @override
  QueuePageState createState() => QueuePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QueueProvider(),
      child: QueuePage(),
    );
  }
}

class QueuePageState extends State<QueuePage>
    with AutomaticKeepAliveClientMixin<QueuePage> {
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
                      _buildQueue(context),
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
  Widget _buildQueue(BuildContext context) {
    return Consumer<QueueProvider>(
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
          itemCount: provider.queueModelObj.queueItemList.length,
          itemBuilder: (context, index) {
            QueueItemModel model = provider.queueModelObj.queueItemList[index];
            return QueueItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
