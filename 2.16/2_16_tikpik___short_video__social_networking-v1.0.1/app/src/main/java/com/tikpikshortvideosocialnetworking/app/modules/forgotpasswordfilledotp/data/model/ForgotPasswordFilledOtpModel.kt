package com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordfilledotp.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordFilledOtpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
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
