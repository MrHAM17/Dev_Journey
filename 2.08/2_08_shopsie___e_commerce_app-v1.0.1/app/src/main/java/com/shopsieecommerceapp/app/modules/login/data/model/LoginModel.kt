package com.shopsieecommerceapp.app.modules.login.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class LoginModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBackGlad: String? =
      MyApp.getInstance().resources.getString(R.string.msg_welcome_back_glad)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOrLoginWith: String? = MyApp.getInstance().resources.getString(R.string.lbl_or_login_with)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_don_t_have_an_account)
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
