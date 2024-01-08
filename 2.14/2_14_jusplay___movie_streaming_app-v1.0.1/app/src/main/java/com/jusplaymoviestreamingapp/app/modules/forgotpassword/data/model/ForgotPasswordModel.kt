package com.jusplaymoviestreamingapp.app.modules.forgotpassword.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotPassword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYouForgotYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_forgot_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
