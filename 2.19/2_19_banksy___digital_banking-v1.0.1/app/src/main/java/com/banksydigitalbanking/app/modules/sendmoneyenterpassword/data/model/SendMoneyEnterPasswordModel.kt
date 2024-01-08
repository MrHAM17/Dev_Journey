package com.banksydigitalbanking.app.modules.sendmoneyenterpassword.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class SendMoneyEnterPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_money_transfer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterYourAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_your_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterYourAccount1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_your_account2)

)
