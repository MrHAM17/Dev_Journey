package com.comforthotelbookingapp.app.modules.forgotpasswordfilledtype.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordFilledTypeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotPassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCodeHasBeenSend: String? =
      MyApp.getInstance().resources.getString(R.string.msg_code_has_been_send)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtResendCodeInFiftyThree: String? =
      MyApp.getInstance().resources.getString(R.string.msg_resend_code_in_53)

)
