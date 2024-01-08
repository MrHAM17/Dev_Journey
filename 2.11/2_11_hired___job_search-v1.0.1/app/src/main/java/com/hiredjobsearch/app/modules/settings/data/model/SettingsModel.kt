package com.hiredjobsearch.app.modules.settings.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSixtyFive: String? = MyApp.getInstance().resources.getString(R.string.lbl_65)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAplicationName: String? =
      MyApp.getInstance().resources.getString(R.string.msg_profile_completeness)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQualityProfiles: String? =
      MyApp.getInstance().resources.getString(R.string.msg_quality_profiles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAccount: String? = MyApp.getInstance().resources.getString(R.string.lbl_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPersonalInfo: String? = MyApp.getInstance().resources.getString(R.string.lbl_personal_info)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExperience: String? = MyApp.getInstance().resources.getString(R.string.lbl_experience)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGeneral: String? = MyApp.getInstance().resources.getString(R.string.lbl_general)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurity: String? = MyApp.getInstance().resources.getString(R.string.lbl_security)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAbout: String? = MyApp.getInstance().resources.getString(R.string.lbl_about)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLegalAndPolicies: String? =
      MyApp.getInstance().resources.getString(R.string.msg_legal_and_policies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHelpFeedback: String? = MyApp.getInstance().resources.getString(R.string.lbl_help_feedback)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAboutUs: String? = MyApp.getInstance().resources.getString(R.string.lbl_about_us)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLargeLabelMedium: String? = MyApp.getInstance().resources.getString(R.string.lbl_logout)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeTwelve: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeTwelve1: String? = MyApp.getInstance().resources.getString(R.string.lbl_saved)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeTwelve2: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)

)
