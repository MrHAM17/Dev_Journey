package com.safebankmobilebankingapp.app.modules.profile.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
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
  var txtSettings: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPersonalInfo: String? = MyApp.getInstance().resources.getString(R.string.lbl_personal_info)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuillingDetails: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_billing_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransferFunds: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_transfer_funds)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrivacySettings: String? =
      MyApp.getInstance().resources.getString(R.string.msg_privacy_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCommunity: String? = MyApp.getInstance().resources.getString(R.string.lbl_community)

)
