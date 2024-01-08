import '../posts_add_sounds_page/widgets/postsaddsounds_item_widget.dart';
import 'controller/posts_add_sounds_controller.dart';
import 'models/posts_add_sounds_model.dart';
import 'models/postsaddsounds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class PostsAddSoundsPage extends StatelessWidget {
  PostsAddSoundsPage({Key? key})
      : super(
          key: key,
        );

  PostsAddSoundsController controller =
      Get.put(PostsAddSoundsController(PostsAddSoundsModel().obs));

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
              _buildPostsAddSounds(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostsAddSounds() {
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
          itemCount: controller
              .postsAddSoundsModelObj.value.postsaddsoundsItemList.value.length,
          itemBuilder: (context, index) {
            PostsaddsoundsItemModel model = controller.postsAddSoundsModelObj
                .value.postsaddsoundsItemList.value[index];
            return PostsaddsoundsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
