package com.vertexrealestateapp.app.modules.signin.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class SignInModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.lbl_welcome_back)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBody: String? = MyApp.getInstance().resources.getString(R.string.msg_sign_in_to_your)
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
  var txtOrcontinuewithsocialaccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_or_continue_with)
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
  var txtSignUp: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_up)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
