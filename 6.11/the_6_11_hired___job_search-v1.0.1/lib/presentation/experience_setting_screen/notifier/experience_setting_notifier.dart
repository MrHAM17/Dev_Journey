import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/experiencesetting_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/experience_setting_screen/models/experience_setting_model.dart';
part 'experience_setting_state.dart';

final experienceSettingNotifier =
    StateNotifierProvider<ExperienceSettingNotifier, ExperienceSettingState>(
        (ref) => ExperienceSettingNotifier(ExperienceSettingState(
                experienceSettingModelObj:
                    ExperienceSettingModel(experiencesettingItemList: [
              ExperiencesettingItemModel(
                  bag: ImageConstant.imgBag,
                  internshipUIUX: "Internship UI/UX Designer",
                  smallLabelRegular: "Shopee Sg",
                  smallLabelRegular1: "•",
                  zipcode: "2019"),
              ExperiencesettingItemModel(
                  bag: ImageConstant.imgCardano1,
                  internshipUIUX: "Junior UI Designer",
                  smallLabelRegular: "Cardano",
                  smallLabelRegular1: "•",
                  zipcode: "2020"),
              ExperiencesettingItemModel(
                  bag: ImageConstant.imgLogoDeepOrange700,
                  internshipUIUX: "UI/UX Designer",
                  smallLabelRegular: "Shopee Sg",
                  smallLabelRegular1: "•",
                  zipcode: "2021")
            ]))));

/// A notifier that manages the state of a ExperienceSetting according to the event that is dispatched to it.
class ExperienceSettingNotifier extends StateNotifier<ExperienceSettingState> {
  ExperienceSettingNotifier(ExperienceSettingState state) : super(state);
}
