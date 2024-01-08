import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frametwentyfour_item_model.dart';
import '../models/eightynine_item_model.dart';
import '../models/sixty_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/articles_screen/models/articles_model.dart';
part 'articles_state.dart';

final articlesNotifier = StateNotifierProvider<ArticlesNotifier, ArticlesState>(
    (ref) => ArticlesNotifier(ArticlesState(
        searchController: TextEditingController(),
        articlesModelObj: ArticlesModel(
            frametwentyfourItemList:
                List.generate(3, (index) => FrametwentyfourItemModel()),
            eightynineItemList: [
              EightynineItemModel(
                  covidNineteen: ImageConstant.imgRectangle460,
                  covidNineteen1: "Covid-19",
                  comparingtheAstraZen:
                      "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                  jun: "Jun 12, 2021",
                  time: "6 min read"),
              EightynineItemModel(
                  covidNineteen: ImageConstant.imgRectangle458,
                  covidNineteen1: "Covid-19",
                  comparingtheAstraZen:
                      "The Horror Of The Second Wave Of COVID-19",
                  jun: "Jun 10, 2021",
                  time: "5 min read")
            ],
            sixtyItemList: [
              SixtyItemModel(
                  image: ImageConstant.imgUnsplash86rvjm9zowy,
                  theHealthiest:
                      "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                  jun: "Jun 10, 2021 ",
                  time: "5min read",
                  image1: ImageConstant.imgBookmark12x10)
            ]))));

/// A notifier that manages the state of a Articles according to the event that is dispatched to it.
class ArticlesNotifier extends StateNotifier<ArticlesState> {
  ArticlesNotifier(ArticlesState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FrametwentyfourItemModel> newList =
        List<FrametwentyfourItemModel>.from(
            state.articlesModelObj!.frametwentyfourItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        articlesModelObj:
            state.articlesModelObj?.copyWith(frametwentyfourItemList: newList));
  }
}
