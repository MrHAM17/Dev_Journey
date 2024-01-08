package com.banksydigitalbanking.app.modules.banktobanktwo.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class BankToBankTwoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_bank_to_bank2)
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
