package com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordtypeotp.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordTypeOtpModel(
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
  var txtResendCodeInFiftyFive: String? =
      MyApp.getInstance().resources.getString(R.string.msg_resend_code_in_55)

)
