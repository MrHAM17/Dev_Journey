import '../followers_page/widgets/followers_item_widget.dart';
import 'controller/followers_controller.dart';
import 'models/followers_item_model.dart';
import 'models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class FollowersPage extends StatelessWidget {
  FollowersPage({Key? key})
      : super(
          key: key,
        );

  FollowersController controller =
      Get.put(FollowersController(FollowersModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildFollowers(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowers() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
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
          itemCount:
              controller.followersModelObj.value.followersItemList.value.length,
          itemBuilder: (context, index) {
            FollowersItemModel model = controller
                .followersModelObj.value.followersItemList.value[index];
            return FollowersItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
