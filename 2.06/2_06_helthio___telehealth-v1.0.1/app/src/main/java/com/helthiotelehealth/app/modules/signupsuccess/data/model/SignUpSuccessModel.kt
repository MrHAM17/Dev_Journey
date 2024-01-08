package com.helthiotelehealth.app.modules.signupsuccess.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpSuccessModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtYeayWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_success)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOnceAgainYouLogin: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_account_has)

)
