import '../reviews_page/widgets/layout26_item_widget.dart';import 'bloc/reviews_bloc.dart';import 'models/layout26_item_model.dart';import 'models/reviews_model.dart';import 'package:flutter/material.dart';import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';class ReviewsPage extends StatefulWidget {const ReviewsPage({Key? key}) : super(key: key);

@override ReviewsPageState createState() =>  ReviewsPageState();

static Widget builder(BuildContext context) { return BlocProvider<ReviewsBloc>(create: (context) => ReviewsBloc(ReviewsState(reviewsModelObj: ReviewsModel()))..add(ReviewsInitialEvent()), child: ReviewsPage()); } 
 }
class ReviewsPageState extends State<ReviewsPage> with  AutomaticKeepAliveClientMixin<ReviewsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 36.v), _buildReviewList(context)]))))); } 
/// Section Widget
Widget _buildReviewList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), BlocSelector<ReviewsBloc, ReviewsState, ReviewsModel?>(selector: (state) => state.reviewsModelObj, builder: (context, reviewsModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: reviewsModelObj?.layout26ItemList.length ?? 0, itemBuilder: (context, index) {Layout26ItemModel model = reviewsModelObj?.layout26ItemList[index] ?? Layout26ItemModel(); return Layout26ItemWidget(model);});})])); } 
 }
