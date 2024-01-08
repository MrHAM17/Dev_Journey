package com.safebankmobilebankingapp.app.modules.verifyemail.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class VerifyEmailModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtVerifyYourEmail: String? =
      MyApp.getInstance().resources.getString(R.string.msg_verify_your_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleaseEnterDigit: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_enter_4_digit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtResendCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_resend_code)

)
