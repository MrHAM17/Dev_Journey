package com.banksydigitalbanking.app.modules.signup.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_or_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_set_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel2: String? = MyApp.getInstance().resources.getString(R.string.msg_confirm_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHaveAccount: String? = MyApp.getInstance().resources.getString(R.string.lbl_have_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_in2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etConfirmpasswordValue: String? = null
)
