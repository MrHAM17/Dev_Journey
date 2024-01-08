package com.hiredjobsearch.app.modules.profile.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGustavoLipshutz: String? =
      MyApp.getInstance().resources.getString(R.string.msg_gustavo_lipshutz)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOpenToWork: String? = MyApp.getInstance().resources.getString(R.string.lbl_open_to_work)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUIUXDesignerWebDesignMobileApp: String? =
      MyApp.getInstance().resources.getString(R.string.msg_ui_ux_designer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeSixteen: String? = MyApp.getInstance().resources.getString(R.string.lbl_25)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtApplied: String? = MyApp.getInstance().resources.getString(R.string.lbl_applied)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAboutMe: String? = MyApp.getInstance().resources.getString(R.string.lbl_about_me)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSkills: String? = MyApp.getInstance().resources.getString(R.string.lbl_skills)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExperience: String? = MyApp.getInstance().resources.getString(R.string.lbl_experience)
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
