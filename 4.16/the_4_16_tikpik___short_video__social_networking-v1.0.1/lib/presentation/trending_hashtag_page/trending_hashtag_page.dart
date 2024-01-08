import '../trending_hashtag_page/widgets/autolayouthorizontal3_item_widget.dart';
import '../trending_hashtag_page/widgets/autolayouthorizontal4_item_widget.dart';
import 'controller/trending_hashtag_controller.dart';
import 'models/autolayouthorizontal3_item_model.dart';
import 'models/autolayouthorizontal4_item_model.dart';
import 'models/trending_hashtag_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

class TrendingHashtagPage extends StatelessWidget {
  TrendingHashtagPage({Key? key})
      : super(
          key: key,
        );

  TrendingHashtagController controller =
      Get.put(TrendingHashtagController(TrendingHashtagModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildCategoriesHashtag(
                        beautiful: "lbl_amazingfood".tr,
                        trendingHashtag: "msg_trending_hashtag".tr,
                        distance: "lbl_827_5m".tr,
                      ),
                      SizedBox(height: 20.v),
                      _buildAutoLayoutHorizontal(),
                      SizedBox(height: 20.v),
                      _buildCategoriesHashtag(
                        beautiful: "lbl_beautiful".tr,
                        trendingHashtag: "msg_trending_hashtag".tr,
                        distance: "lbl_827_5m".tr,
                      ),
                      SizedBox(height: 20.v),
                      _buildAutoLayoutHorizontal1(),
                      SizedBox(height: 20.v),
                      _buildCategoriesHashtag(
                        beautiful: "lbl_songforyou".tr,
                        trendingHashtag: "msg_trending_hashtag".tr,
                        distance: "lbl_827_5m".tr,
                      ),
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
  Widget _buildAutoLayoutHorizontal() {
    return SizedBox(
      height: 200.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller.trendingHashtagModelObj.value
              .autolayouthorizontal3ItemList.value.length,
          itemBuilder: (context, index) {
            Autolayouthorizontal3ItemModel model = controller
                .trendingHashtagModelObj
                .value
                .autolayouthorizontal3ItemList
                .value[index];
            return Autolayouthorizontal3ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal1() {
    return SizedBox(
      height: 200.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller.trendingHashtagModelObj.value
              .autolayouthorizontal4ItemList.value.length,
          itemBuilder: (context, index) {
            Autolayouthorizontal4ItemModel model = controller
                .trendingHashtagModelObj
                .value
                .autolayouthorizontal4ItemList
                .value[index];
            return Autolayouthorizontal4ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildCategoriesHashtag({
    required String beautiful,
    required String trendingHashtag,
    required String distance,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 56.adaptSize,
          width: 56.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillRedATL28,
          child: CustomImageView(
            imagePath: ImageConstant.imgCategoriesHashtag,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 4.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                beautiful,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.gray900,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                trendingHashtag,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.gray700,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: Text(
            distance,
            style: CustomTextStyles.titleSmallSemiBold.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 16.v,
            bottom: 16.v,
          ),
        ),
      ],
    );
  }
}
