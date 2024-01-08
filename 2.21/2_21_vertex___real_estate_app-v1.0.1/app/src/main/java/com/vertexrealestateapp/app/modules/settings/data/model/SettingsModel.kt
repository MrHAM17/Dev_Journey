package com.vertexrealestateapp.app.modules.settings.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtApplicationSettings: String? =
      MyApp.getInstance().resources.getString(R.string.msg_application_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification1: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDarkMode: String? = MyApp.getInstance().resources.getString(R.string.lbl_dark_mode)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.lbl_english)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCountry: String? = MyApp.getInstance().resources.getString(R.string.lbl_country)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_us)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSupport: String? = MyApp.getInstance().resources.getString(R.string.lbl_support)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTermsOfUse: String? = MyApp.getInstance().resources.getString(R.string.lbl_terms_of_use)
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
  var txtAbout: String? = MyApp.getInstance().resources.getString(R.string.lbl_about)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFAQs: String? = MyApp.getInstance().resources.getString(R.string.lbl_faqs)

)
