package com.helthiotelehealth.app.modules.resetpasswordemailtabcontainer.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class ResetPasswordEmailTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotYourPassword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_forgot_your_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterYourEmail: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_your_email2)

)
