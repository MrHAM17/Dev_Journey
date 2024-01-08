import '../about_page/widgets/about_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  AboutPageState createState() => AboutPageState();
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
                            Text("Genre", style: theme.textTheme.labelMedium),
                            SizedBox(height: 4.v),
                            SizedBox(
                                width: 126.h,
                                child: Text("Adventure, Comedy, Family",
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
                                Text("Language text",
                                    style: theme.textTheme.labelMedium),
                                SizedBox(height: 3.v),
                                Text("English",
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
                            Text("Year", style: theme.textTheme.labelMedium),
                            SizedBox(height: 3.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("2019",
                                    style: CustomTextStyles.labelLargeSemiBold))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Country", style: theme.textTheme.labelMedium),
                            SizedBox(height: 2.v),
                            Text("United States",
                                style: CustomTextStyles.labelLargeSemiBold)
                          ])
                    ])),
            SizedBox(height: 17.v),
            Text("Actors", style: theme.textTheme.labelMedium),
            SizedBox(height: 15.v),
            SizedBox(
                height: 127.v,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return AboutItemWidget();
                    }))
          ]))
    ]));
  }
}
