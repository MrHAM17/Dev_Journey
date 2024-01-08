package com.ecommerce.app.modules.login.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class LoginModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeToECom: String? =
      MyApp.getInstance().resources.getString(R.string.msg_welcome_to_e_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSignInToContinue: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sign_in_to_continue)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOR: String? = MyApp.getInstance().resources.getString(R.string.lbl_or)
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
