import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/topics_item_model.dart';
import '../models/trendings_item_model.dart';
import '../models/relatedarticles_item_model.dart';
import 'package:the_6_04_health_care/presentation/article_screen/models/article_model.dart';
part 'article_state.dart';

final articleNotifier = StateNotifierProvider<ArticleNotifier, ArticleState>(
    (ref) => ArticleNotifier(ArticleState(
        searchController: TextEditingController(),
        articleModelObj: ArticleModel(
            topicsItemList: List.generate(3, (index) => TopicsItemModel()),
            trendingsItemList: [
              TrendingsItemModel(
                  covidNineteen: ImageConstant.imgRectangle54,
                  covidNineteen1: "Covid-19",
                  description:
                      "Comparing the \nAstraZeneca and \nSinovac COVID-19 \nVaccines",
                  date: "Jun 12, 2021",
                  time: "6 min read"),
              TrendingsItemModel(
                  covidNineteen: ImageConstant.imgRectangle5487x138,
                  covidNineteen1: "Covid-19",
                  description:
                      "The Horror Of The \nSecond Wave Of \nCOVID-19 \npandemic",
                  date: "Jun 10, 2021",
                  time: "5 min read")
            ],
            relatedarticlesItemList: [
              RelatedarticlesItemModel(
                  image: ImageConstant.imgThumbnail,
                  theHealthiest:
                      "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                  date: "Jun 10, 2021 ",
                  time: "5min read"),
              RelatedarticlesItemModel(
                  image: ImageConstant.imgRectangle541,
                  theHealthiest:
                      "Traditional Herbal Medicine Treatments for COVID-19",
                  date: "Jun 9, 2021 ",
                  time: "8 min read")
            ]))));

/// A notifier that manages the state of a Article according to the event that is dispatched to it.
class ArticleNotifier extends StateNotifier<ArticleState> {
  ArticleNotifier(ArticleState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<TopicsItemModel> newList =
        List<TopicsItemModel>.from(state.articleModelObj!.topicsItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        articleModelObj:
            state.articleModelObj?.copyWith(topicsItemList: newList));
  }
}
