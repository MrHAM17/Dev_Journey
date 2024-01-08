import '../posts_upload_media_page/widgets/autolayoutvertical5_item_widget.dart';
import 'models/autolayoutvertical5_item_model.dart';
import 'models/posts_upload_media_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/posts_upload_media_provider.dart';

// ignore_for_file: must_be_immutable
class PostsUploadMediaPage extends StatefulWidget {
  const PostsUploadMediaPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsUploadMediaPageState createState() => PostsUploadMediaPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostsUploadMediaProvider(),
      child: PostsUploadMediaPage(),
    );
  }
}

class PostsUploadMediaPageState extends State<PostsUploadMediaPage>
    with AutomaticKeepAliveClientMixin<PostsUploadMediaPage> {
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
      child: Consumer<PostsUploadMediaProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 122.v,
              crossAxisCount: 3,
              mainAxisSpacing: 8.h,
              crossAxisSpacing: 8.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider
                .postsUploadMediaModelObj.autolayoutvertical5ItemList.length,
            itemBuilder: (context, index) {
              Autolayoutvertical5ItemModel model = provider
                  .postsUploadMediaModelObj.autolayoutvertical5ItemList[index];
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
