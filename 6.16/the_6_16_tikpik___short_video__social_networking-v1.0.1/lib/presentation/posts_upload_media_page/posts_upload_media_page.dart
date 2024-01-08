import '../posts_upload_media_page/widgets/autolayoutvertical5_item_widget.dart';
import 'models/autolayoutvertical5_item_model.dart';
import 'notifier/posts_upload_media_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsUploadMediaPage extends ConsumerStatefulWidget {
  const PostsUploadMediaPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsUploadMediaPageState createState() => PostsUploadMediaPageState();
}

class PostsUploadMediaPageState extends ConsumerState<PostsUploadMediaPage>
    with AutomaticKeepAliveClientMixin<PostsUploadMediaPage> {
  @override
  bool get wantKeepAlive => true;
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
              _buildAutoLayoutVertical(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer(
        builder: (context, ref, _) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 122.v,
              crossAxisCount: 3,
              mainAxisSpacing: 8.h,
              crossAxisSpacing: 8.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: ref
                    .watch(postsUploadMediaNotifier)
                    .postsUploadMediaModelObj
                    ?.autolayoutvertical5ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Autolayoutvertical5ItemModel model = ref
                      .watch(postsUploadMediaNotifier)
                      .postsUploadMediaModelObj
                      ?.autolayoutvertical5ItemList[index] ??
                  Autolayoutvertical5ItemModel();
              return Autolayoutvertical5ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
