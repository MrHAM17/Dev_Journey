package com.tikpikshortvideosocialnetworking.app.modules.settings.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtManageAccount: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_manage_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrivacy: String? = MyApp.getInstance().resources.getString(R.string.lbl_privacy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurity: String? = MyApp.getInstance().resources.getString(R.string.lbl_security)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQRCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_qr_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnglishUS: String? = MyApp.getInstance().resources.getString(R.string.lbl_english_us)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDarkMode: String? = MyApp.getInstance().resources.getString(R.string.lbl_dark_mode)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtContentPreferences: String? =
      MyApp.getInstance().resources.getString(R.string.msg_content_preferences)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAds: String? = MyApp.getInstance().resources.getString(R.string.lbl_ads)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReportAProblem: String? =
      MyApp.getInstance().resources.getString(R.string.msg_report_a_problem)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHelpCenter: String? = MyApp.getInstance().resources.getString(R.string.lbl_help_center)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSafetyCenter: String? = MyApp.getInstance().resources.getString(R.string.lbl_safety_center)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCommunityGuidelines: String? =
      MyApp.getInstance().resources.getString(R.string.msg_community_guidelines)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTermsOfServices: String? =
      MyApp.getInstance().resources.getString(R.string.msg_terms_of_services)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrivacyPolicy: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_privacy_policy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLogout: String? = MyApp.getInstance().resources.getString(R.string.lbl_logout)

)
