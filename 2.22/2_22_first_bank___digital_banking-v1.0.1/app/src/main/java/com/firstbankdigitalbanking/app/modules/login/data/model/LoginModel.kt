package com.firstbankdigitalbanking.app.modules.login.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class LoginModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeToFirstBank: String? =
      MyApp.getInstance().resources.getString(R.string.msg_welcome_to_firstbank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoginYourAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_login_your_account)
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
