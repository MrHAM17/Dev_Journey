package com.banksydigitalbanking.app.modules.mobileprepaidtwo.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class MobilePrepaidTwoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_mobile_prepaid2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAdomShafi: String? = MyApp.getInstance().resources.getString(R.string.lbl_adom_shafi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwoHundredFiftyMillionOneHundr: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_01704889390)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterTheAmmount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_the_ammount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterAmmountYou: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_ammount_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPriceValue: String? = null
)
