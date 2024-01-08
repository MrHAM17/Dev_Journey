package com.jusplaymoviestreamingapp.app.modules.resetpassword.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ResetPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtResetPassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_reset_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleaseEnterYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_enter_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null
)
