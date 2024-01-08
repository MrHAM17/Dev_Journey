import '../home_page/widgets/trendingnow_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/trendingnow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 27.v,
          ),
          child: Obx(
            () => GroupedListView<TrendingnowItemModel, String>(
              shrinkWrap: true,
              stickyHeaderBackgroundColor: Colors.transparent,
              elements: controller.homeModelObj.value.trendingnowItemList.value,
              groupBy: (element) => element.groupBy!.value,
              sort: false,
              groupSeparatorBuilder: (String value) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: 32.v,
                    bottom: 13.v,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          value,
                          style: theme.textTheme.headlineSmall!.copyWith(
                            color: appTheme.gray90001,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 176.h,
                          bottom: 10.v,
                        ),
                        child: Text(
                          value,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainer16
                              .copyWith(
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemBuilder: (context, model) {
                return TrendingnowItemWidget(
                  model,
                );
              },
              separator: SizedBox(
                height: 12.v,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 72.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse48x48,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 2.v,
          bottom: 3.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_good_morning".tr,
              margin: EdgeInsets.only(right: 18.h),
            ),
            SizedBox(height: 6.v),
            AppbarSubtitle(
              text: "lbl_andrew_ainsley".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 12.v,
            right: 13.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconsGray90001,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 12.v,
            right: 37.h,
          ),
        ),
      ],
    );
  }
}
