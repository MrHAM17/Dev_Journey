import '../posts_add_effects_page/widgets/postsaddeffects_item_widget.dart';
import 'controller/posts_add_effects_controller.dart';
import 'models/posts_add_effects_model.dart';
import 'models/postsaddeffects_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class PostsAddEffectsPage extends StatelessWidget {
  PostsAddEffectsPage({Key? key})
      : super(
          key: key,
        );

  PostsAddEffectsController controller =
      Get.put(PostsAddEffectsController(PostsAddEffectsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineGray100,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 289.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 20.h,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.postsAddEffectsModelObj.value
                        .postsaddeffectsItemList.value.length,
                    itemBuilder: (context, index) {
                      PostsaddeffectsItemModel model = controller
                          .postsAddEffectsModelObj
                          .value
                          .postsaddeffectsItemList
                          .value[index];
                      return PostsaddeffectsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
