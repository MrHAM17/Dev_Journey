import '../about_page/widgets/about_item_widget.dart';
import 'bloc/about_bloc.dart';
import 'models/about_item_model.dart';
import 'models/about_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  AboutPageState createState() => AboutPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutBloc>(
        create: (context) => AboutBloc(AboutState(aboutModelObj: AboutModel()))
          ..add(AboutInitialEvent()),
        child: AboutPage());
  }
}

class AboutPageState extends State<AboutPage>
    with AutomaticKeepAliveClientMixin<AboutPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildScrollView(context)));
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 14.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(right: 107.h),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_genre".tr,
                                style: theme.textTheme.labelMedium),
                            SizedBox(height: 4.v),
                            SizedBox(
                                width: 126.h,
                                child: Text("msg_adventure_comedy2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.labelLargeSemiBold
                                        .copyWith(height: 1.50)))
                          ]),
                      Padding(
                          padding: EdgeInsets.only(left: 53.h, bottom: 18.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_language_text".tr,
                                    style: theme.textTheme.labelMedium),
                                SizedBox(height: 3.v),
                                Text("lbl_english".tr,
                                    style: CustomTextStyles.labelLargeSemiBold)
                              ]))
                    ])),
            SizedBox(height: 15.v),
            Padding(
                padding: EdgeInsets.only(right: 98.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_year".tr,
                                style: theme.textTheme.labelMedium),
                            SizedBox(height: 3.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_2019".tr,
                                    style: CustomTextStyles.labelLargeSemiBold))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_country".tr,
                                style: theme.textTheme.labelMedium),
                            SizedBox(height: 2.v),
                            Text("lbl_united_states".tr,
                                style: CustomTextStyles.labelLargeSemiBold)
                          ])
                    ])),
            SizedBox(height: 17.v),
            Text("lbl_actors".tr, style: theme.textTheme.labelMedium),
            SizedBox(height: 15.v),
            SizedBox(
                height: 127.v,
                child: BlocSelector<AboutBloc, AboutState, AboutModel?>(
                    selector: (state) => state.aboutModelObj,
                    builder: (context, aboutModelObj) {
                      return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 16.h);
                          },
                          itemCount: aboutModelObj?.aboutItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            AboutItemModel model =
                                aboutModelObj?.aboutItemList[index] ??
                                    AboutItemModel();
                            return AboutItemWidget(model);
                          });
                    }))
          ]))
    ]));
  }
}
