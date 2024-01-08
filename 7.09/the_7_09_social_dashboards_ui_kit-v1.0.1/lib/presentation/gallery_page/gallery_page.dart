import '../gallery_page/widgets/gallery_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key})
      : super(
          key: key,
        );

  @override
  GalleryPageState createState() => GalleryPageState();
}

class GalleryPageState extends State<GalleryPage>
    with AutomaticKeepAliveClientMixin<GalleryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 320.v,
                    crossAxisCount: 1,
                    mainAxisSpacing: 1.h,
                    crossAxisSpacing: 1.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GalleryItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
