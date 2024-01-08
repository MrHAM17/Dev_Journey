package com.hiredjobsearch.app.modules.experiencesetting.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ExperienceSettingModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtExperience: String? = MyApp.getInstance().resources.getString(R.string.lbl_experience)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExperience1: String? = MyApp.getInstance().resources.getString(R.string.lbl_experience)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEducation: String? = MyApp.getInstance().resources.getString(R.string.lbl_education)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUniversityOfOxford: String? =
      MyApp.getInstance().resources.getString(R.string.msg_university_of_oxford)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular: String? =
      MyApp.getInstance().resources.getString(R.string.msg_computer_science)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular1: String? = MyApp.getInstance().resources.getString(R.string.lbl2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2019)

)
