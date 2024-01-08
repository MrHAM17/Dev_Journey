package com.helthiotelehealth.app.modules.signup.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLogin: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_up)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_already_have_an)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLogIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_log_in2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
