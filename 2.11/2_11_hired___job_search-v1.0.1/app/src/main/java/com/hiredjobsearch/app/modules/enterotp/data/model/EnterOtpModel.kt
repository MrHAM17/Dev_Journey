package com.hiredjobsearch.app.modules.enterotp.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class EnterOtpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLargeLabelMedium: String? =
      MyApp.getInstance().resources.getString(R.string.msg_didn_t_receive_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLargeLabelMedium1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_resend_code)

)
