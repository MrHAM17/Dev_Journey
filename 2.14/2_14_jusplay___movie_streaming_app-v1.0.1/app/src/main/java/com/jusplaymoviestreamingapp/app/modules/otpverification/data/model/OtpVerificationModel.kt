package com.jusplaymoviestreamingapp.app.modules.otpverification.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class OtpVerificationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOTPVerification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_otp_verification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDigitCodeHas: String? =
      MyApp.getInstance().resources.getString(R.string.msg_6_digit_code_has)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDidnTReceiveThe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_didn_t_receive_the)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtResend: String? = MyApp.getInstance().resources.getString(R.string.lbl_resend)

)
