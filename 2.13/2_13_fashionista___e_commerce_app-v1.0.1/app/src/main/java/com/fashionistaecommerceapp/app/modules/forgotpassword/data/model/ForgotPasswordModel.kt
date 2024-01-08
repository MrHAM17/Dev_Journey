package com.fashionistaecommerceapp.app.modules.forgotpassword.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeneedyourregistrati: String? =
      MyApp.getInstance().resources.getString(R.string.msg_we_need_your_registration)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
