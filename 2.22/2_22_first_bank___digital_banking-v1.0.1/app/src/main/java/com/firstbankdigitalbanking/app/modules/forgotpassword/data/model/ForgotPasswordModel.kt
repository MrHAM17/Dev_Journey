package com.firstbankdigitalbanking.app.modules.forgotpassword.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotPassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_enter_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null
)
