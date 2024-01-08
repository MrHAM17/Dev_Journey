import '../interests_people_page/widgets/interestspeople_item_widget.dart';
import 'models/interests_people_model.dart';
import 'models/interestspeople_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'provider/interests_people_provider.dart';

// ignore_for_file: must_be_immutable
class InterestsPeoplePage extends StatefulWidget {
  const InterestsPeoplePage({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsPeoplePageState createState() => InterestsPeoplePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InterestsPeopleProvider(),
      child: InterestsPeoplePage(),
    );
  }
}

class InterestsPeoplePageState extends State<InterestsPeoplePage>
    with AutomaticKeepAliveClientMixin<InterestsPeoplePage> {
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
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_see_all_people_you".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildInterestsPeople(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestsPeople(BuildContext context) {
    return Consumer<InterestsPeopleProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Opacity(
              opacity: 0.5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.v),
                child: SizedBox(
                  width: 335.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray300.withOpacity(0.53),
                  ),
                ),
              ),
            );
          },
          itemCount:
              provider.interestsPeopleModelObj.interestspeopleItemList.length,
          itemBuilder: (context, index) {
            InterestspeopleItemModel model =
                provider.interestsPeopleModelObj.interestspeopleItemList[index];
            return InterestspeopleItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
