package com.musicplayer.app.modules.login.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class LoginModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotYourLogin: String? =
      MyApp.getInstance().resources.getString(R.string.msg_forgot_your_login)
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
