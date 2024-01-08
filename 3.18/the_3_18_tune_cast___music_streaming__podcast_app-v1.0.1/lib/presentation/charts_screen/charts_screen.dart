import '../charts_screen/widgets/topalbumsglobal1_item_widget.dart';import '../charts_screen/widgets/topalbumsglobal_item_widget.dart';import 'bloc/charts_bloc.dart';import 'models/charts_model.dart';import 'models/topalbumsglobal1_item_model.dart';import 'models/topalbumsglobal_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';class ChartsScreen extends StatelessWidget {const ChartsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ChartsBloc>(create: (context) => ChartsBloc(ChartsState(chartsModelObj: ChartsModel()))..add(ChartsInitialEvent()), child: ChartsScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(height: 907.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topLeft, child: Text("msg_weekly_album_charts".tr, style: theme.textTheme.headlineSmall)), SizedBox(width: double.maxFinite, child: Align(alignment: Alignment.topCenter, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_weekly_album_charts".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 13.v), _buildTOPALBUMSGLOBAL(context), SizedBox(height: 30.v), Text("msg_weekly_song_charts".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 13.v), _buildTOPALBUMSGLOBAL1(context)])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_charts".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildTOPALBUMSGLOBAL(BuildContext context) { return Expanded(child: SizedBox(height: 222.v, child: BlocSelector<ChartsBloc, ChartsState, ChartsModel?>(selector: (state) => state.chartsModelObj, builder: (context, chartsModelObj) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: chartsModelObj?.topalbumsglobalItemList.length ?? 0, itemBuilder: (context, index) {TopalbumsglobalItemModel model = chartsModelObj?.topalbumsglobalItemList[index] ?? TopalbumsglobalItemModel(); return TopalbumsglobalItemWidget(model, onTapCard: () {onTapCard(context);});});}))); } 
/// Section Widget
Widget _buildTOPALBUMSGLOBAL1(BuildContext context) { return SizedBox(height: 222.v, child: BlocSelector<ChartsBloc, ChartsState, ChartsModel?>(selector: (state) => state.chartsModelObj, builder: (context, chartsModelObj) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: chartsModelObj?.topalbumsglobal1ItemList.length ?? 0, itemBuilder: (context, index) {Topalbumsglobal1ItemModel model = chartsModelObj?.topalbumsglobal1ItemList[index] ?? Topalbumsglobal1ItemModel(); return Topalbumsglobal1ItemWidget(model);});})); } 
/// Navigates to the topAlbumsGlobalScreen when the action is triggered.
onTapCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.topAlbumsGlobalScreen); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
