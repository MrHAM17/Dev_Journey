package com.socialsocialnetworking.app.modules.login.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class LogInModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeToSocial: String? =
      MyApp.getInstance().resources.getString(R.string.msg_welcome_to_social)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleaseEnterYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_enter_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotPassword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
