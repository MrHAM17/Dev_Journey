package com.fashionistaecommerceapp.app.modules.resetpassword.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ResetPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_reset_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterANewPassword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_a_new_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etConfirmpasswordValue: String? = null
)
