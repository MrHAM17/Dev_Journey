package com.shopsieecommerceapp.app.modules.settings.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_marriet_miles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStatus: String? = MyApp.getInstance().resources.getString(R.string.lbl_online)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSettings: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle2: String? = MyApp.getInstance().resources.getString(R.string.msg_activity_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle3: String? = MyApp.getInstance().resources.getString(R.string.msg_billing_and_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle4: String? = MyApp.getInstance().resources.getString(R.string.msg_security_privacy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle5: String? = MyApp.getInstance().resources.getString(R.string.lbl_help)

)
