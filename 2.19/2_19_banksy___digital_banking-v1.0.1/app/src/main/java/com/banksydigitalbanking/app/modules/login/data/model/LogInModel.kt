package com.banksydigitalbanking.app.modules.login.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class LogInModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHello: String? = MyApp.getInstance().resources.getString(R.string.lbl_hello)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterYourDetail: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_your_detail)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_or_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHaveAccount: String? = MyApp.getInstance().resources.getString(R.string.lbl_have_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSignUp: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_up)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
