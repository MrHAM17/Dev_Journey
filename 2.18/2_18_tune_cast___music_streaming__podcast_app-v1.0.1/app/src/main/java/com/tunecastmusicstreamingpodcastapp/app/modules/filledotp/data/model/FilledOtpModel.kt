package com.tunecastmusicstreamingpodcastapp.app.modules.filledotp.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class FilledOtpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCodeHasBeenSent: String? =
      MyApp.getInstance().resources.getString(R.string.msg_code_has_been_sent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtResendCodeInFiftyThree: String? =
      MyApp.getInstance().resources.getString(R.string.msg_resend_code_in_53)

)
