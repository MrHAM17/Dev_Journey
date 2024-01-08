import '../similiar_page/widgets/similiar_item_widget.dart';
import 'bloc/similiar_bloc.dart';
import 'models/similiar_item_model.dart';
import 'models/similiar_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

class SimiliarPage extends StatefulWidget {
  const SimiliarPage({Key? key}) : super(key: key);

  @override
  SimiliarPageState createState() => SimiliarPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<SimiliarBloc>(
        create: (context) =>
            SimiliarBloc(SimiliarState(similiarModelObj: SimiliarModel()))
              ..add(SimiliarInitialEvent()),
        child: SimiliarPage());
  }
}

class SimiliarPageState extends State<SimiliarPage>
    with AutomaticKeepAliveClientMixin<SimiliarPage> {
  @override
  bool get wantKeepAlive => true;

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
                          BlocSelector<SimiliarBloc, SimiliarState,
                                  SimiliarModel?>(
                              selector: (state) => state.similiarModelObj,
                              builder: (context, similiarModelObj) {
                                return GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisExtent: 141.v,
                                            crossAxisCount: 1,
                                            mainAxisSpacing: 1.h,
                                            crossAxisSpacing: 1.h),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: similiarModelObj
                                            ?.similiarItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      SimiliarItemModel model = similiarModelObj
                                              ?.similiarItemList[index] ??
                                          SimiliarItemModel();
                                      return SimiliarItemWidget(model);
                                    });
                              })
                        ])))));
  }
}
