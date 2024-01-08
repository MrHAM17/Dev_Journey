package com.firstbankdigitalbanking.app.modules.settingsecurity.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class SettingSecurityModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTwofactorAuthentication: String? =
      MyApp.getInstance().resources.getString(R.string.msg_two_factor_authentication)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnableOrDisable: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enable_or_disable)
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
  var txtCardType: String? = MyApp.getInstance().resources.getString(R.string.msg_current_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType1: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null
)
