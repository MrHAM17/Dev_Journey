import '../posts_upload_media_page/widgets/autolayoutvertical5_item_widget.dart';
import 'controller/posts_upload_media_controller.dart';
import 'models/autolayoutvertical5_item_model.dart';
import 'models/posts_upload_media_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class PostsUploadMediaPage extends StatelessWidget {
  PostsUploadMediaPage({Key? key})
      : super(
          key: key,
        );

  PostsUploadMediaController controller =
      Get.put(PostsUploadMediaController(PostsUploadMediaModel().obs));

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
              _buildAutoLayoutVertical(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 122.v,
            crossAxisCount: 3,
            mainAxisSpacing: 8.h,
            crossAxisSpacing: 8.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.postsUploadMediaModelObj.value
              .autolayoutvertical5ItemList.value.length,
          itemBuilder: (context, index) {
            Autolayoutvertical5ItemModel model = controller
                .postsUploadMediaModelObj
                .value
                .autolayoutvertical5ItemList
                .value[index];
            return Autolayoutvertical5ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
