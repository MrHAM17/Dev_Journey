import '../followers_page/widgets/followers_item_widget.dart';
import 'models/followers_item_model.dart';
import 'models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/followers_provider.dart';

// ignore_for_file: must_be_immutable
class FollowersPage extends StatefulWidget {
  const FollowersPage({Key? key})
      : super(
          key: key,
        );

  @override
  FollowersPageState createState() => FollowersPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FollowersProvider(),
      child: FollowersPage(),
    );
  }
}

class FollowersPageState extends State<FollowersPage>
    with AutomaticKeepAliveClientMixin<FollowersPage> {
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
              _buildFollowers(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowers(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer<FollowersProvider>(
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
            itemCount: provider.followersModelObj.followersItemList.length,
            itemBuilder: (context, index) {
              FollowersItemModel model =
                  provider.followersModelObj.followersItemList[index];
              return FollowersItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
