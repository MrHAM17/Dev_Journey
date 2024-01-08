package com.housitbuyrentsellproperty.app.modules.formotp.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class FormOtpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_the_verification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_thpe_4_digit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRegister: String? =
      MyApp.getInstance().resources.getString(R.string.msg_didn_t_receive_the)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRegister1: String? = MyApp.getInstance().resources.getString(R.string.lbl_resend_otp)

)
