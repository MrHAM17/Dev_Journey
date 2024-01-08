package com.safebankmobilebankingapp.app.modules.forgotpassword.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtForgetPassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_forget_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_enter_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
