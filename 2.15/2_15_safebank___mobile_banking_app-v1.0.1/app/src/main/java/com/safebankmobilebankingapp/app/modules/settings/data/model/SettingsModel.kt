package com.safebankmobilebankingapp.app.modules.settings.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlexDordan: String? = MyApp.getInstance().resources.getString(R.string.lbl_alex_dordan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWebDeveloper: String? = MyApp.getInstance().resources.getString(R.string.lbl_web_developer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChangePassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_change_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReferFriends: String? =
      MyApp.getInstance().resources.getString(R.string.msg_invite_friends)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrivacyPolicy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_privacy_policy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFAQs: String? = MyApp.getInstance().resources.getString(R.string.lbl_faqs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTermAndCondition: String? =
      MyApp.getInstance().resources.getString(R.string.msg_terms_conditions)

)
