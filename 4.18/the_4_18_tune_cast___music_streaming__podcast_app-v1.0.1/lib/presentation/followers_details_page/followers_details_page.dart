import '../followers_details_page/widgets/following1_item_widget.dart';
import '../followers_details_page/widgets/ninetyfive_item_widget.dart';
import 'controller/followers_details_controller.dart';
import 'models/followers_details_model.dart';
import 'models/following1_item_model.dart';
import 'models/ninetyfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

class FollowersDetailsPage extends StatelessWidget {
  FollowersDetailsPage({Key? key})
      : super(
          key: key,
        );

  FollowersDetailsController controller =
      Get.put(FollowersDetailsController(FollowersDetailsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildNinetyFive(),
                    SizedBox(height: 24.v),
                    _buildFollowing(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFive() {
    return Obx(
      () => ListView.separated(
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
        itemCount: controller
            .followersDetailsModelObj.value.ninetyfiveItemList.value.length,
        itemBuilder: (context, index) {
          NinetyfiveItemModel model = controller
              .followersDetailsModelObj.value.ninetyfiveItemList.value[index];
          return NinetyfiveItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowing() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: controller
            .followersDetailsModelObj.value.following1ItemList.value.length,
        itemBuilder: (context, index) {
          Following1ItemModel model = controller
              .followersDetailsModelObj.value.following1ItemList.value[index];
          return Following1ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
