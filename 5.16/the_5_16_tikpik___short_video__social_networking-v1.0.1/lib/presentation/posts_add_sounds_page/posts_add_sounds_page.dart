import '../posts_add_sounds_page/widgets/postsaddsounds_item_widget.dart';
import 'models/posts_add_sounds_model.dart';
import 'models/postsaddsounds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/posts_add_sounds_provider.dart';

// ignore_for_file: must_be_immutable
class PostsAddSoundsPage extends StatefulWidget {
  const PostsAddSoundsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsAddSoundsPageState createState() => PostsAddSoundsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostsAddSoundsProvider(),
      child: PostsAddSoundsPage(),
    );
  }
}

class PostsAddSoundsPageState extends State<PostsAddSoundsPage>
    with AutomaticKeepAliveClientMixin<PostsAddSoundsPage> {
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
              _buildPostsAddSounds(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostsAddSounds(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer<PostsAddSoundsProvider>(
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
            itemCount:
                provider.postsAddSoundsModelObj.postsaddsoundsItemList.length,
            itemBuilder: (context, index) {
              PostsaddsoundsItemModel model =
                  provider.postsAddSoundsModelObj.postsaddsoundsItemList[index];
              return PostsaddsoundsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
