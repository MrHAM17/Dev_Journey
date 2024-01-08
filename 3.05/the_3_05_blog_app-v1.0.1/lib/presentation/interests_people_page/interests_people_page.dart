import '../interests_people_page/widgets/interestspeople_item_widget.dart';
import 'bloc/interests_people_bloc.dart';
import 'models/interests_people_model.dart';
import 'models/interestspeople_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InterestsPeoplePage extends StatefulWidget {
  const InterestsPeoplePage({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsPeoplePageState createState() => InterestsPeoplePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InterestsPeopleBloc>(
      create: (context) => InterestsPeopleBloc(InterestsPeopleState(
        interestsPeopleModelObj: InterestsPeopleModel(),
      ))
        ..add(InterestsPeopleInitialEvent()),
      child: InterestsPeoplePage(),
    );
  }
}

class InterestsPeoplePageState extends State<InterestsPeoplePage>
    with AutomaticKeepAliveClientMixin<InterestsPeoplePage> {
  @override
  bool get wantKeepAlive => true;
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
    return BlocSelector<InterestsPeopleBloc, InterestsPeopleState,
        InterestsPeopleModel?>(
      selector: (state) => state.interestsPeopleModelObj,
      builder: (context, interestsPeopleModelObj) {
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
              interestsPeopleModelObj?.interestspeopleItemList.length ?? 0,
          itemBuilder: (context, index) {
            InterestspeopleItemModel model =
                interestsPeopleModelObj?.interestspeopleItemList[index] ??
                    InterestspeopleItemModel();
            return InterestspeopleItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
