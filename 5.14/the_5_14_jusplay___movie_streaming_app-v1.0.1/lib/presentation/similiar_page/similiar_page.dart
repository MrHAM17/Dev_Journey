import '../similiar_page/widgets/similiar_item_widget.dart';
import 'models/similiar_item_model.dart';
import 'models/similiar_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'provider/similiar_provider.dart';

class SimiliarPage extends StatefulWidget {
  const SimiliarPage({Key? key}) : super(key: key);

  @override
  SimiliarPageState createState() => SimiliarPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SimiliarProvider(), child: SimiliarPage());
  }
}

class SimiliarPageState extends State<SimiliarPage>
    with AutomaticKeepAliveClientMixin<SimiliarPage> {
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
                margin: EdgeInsets.only(top: 36.v),
                decoration: AppDecoration.bg,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    decoration: AppDecoration.bg,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 50.v),
                          Consumer<SimiliarProvider>(
                              builder: (context, provider, child) {
                            return GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: 141.v,
                                        crossAxisCount: 1,
                                        mainAxisSpacing: 1.h,
                                        crossAxisSpacing: 1.h),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: provider
                                    .similiarModelObj.similiarItemList.length,
                                itemBuilder: (context, index) {
                                  SimiliarItemModel model = provider
                                      .similiarModelObj.similiarItemList[index];
                                  return SimiliarItemWidget(model);
                                });
                          })
                        ])))));
  }
}
