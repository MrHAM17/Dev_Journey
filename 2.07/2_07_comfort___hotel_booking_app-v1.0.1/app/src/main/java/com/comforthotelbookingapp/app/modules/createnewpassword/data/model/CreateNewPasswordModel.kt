package com.comforthotelbookingapp.app.modules.createnewpassword.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class CreateNewPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotPassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCreateYourNew: String? =
      MyApp.getInstance().resources.getString(R.string.msg_create_your_new)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
