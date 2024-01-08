package com.banksydigitalbanking.app.modules.banktobankthree.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class BankToBankThreeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_bank_to_bank2)
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
  var txtEnterYourSend: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_your_send)

)
