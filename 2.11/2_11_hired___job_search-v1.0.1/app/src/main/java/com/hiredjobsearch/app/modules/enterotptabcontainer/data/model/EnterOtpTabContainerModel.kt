package com.hiredjobsearch.app.modules.enterotptabcontainer.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class EnterOtpTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterOTP: String? = MyApp.getInstance().resources.getString(R.string.lbl_enter_otp)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeHaveJustSent: String? =
      MyApp.getInstance().resources.getString(R.string.msg_we_have_just_sent)

)
