package com.banksydigitalbanking.app.modules.onboarding.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class OnboardingModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOnlineDigital: String? =
      MyApp.getInstance().resources.getString(R.string.msg_online_digital)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBanking: String? = MyApp.getInstance().resources.getString(R.string.lbl_banking)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeHelpOurUser: String? =
      MyApp.getInstance().resources.getString(R.string.msg_we_help_our_user)

)
