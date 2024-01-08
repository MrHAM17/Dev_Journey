package com.banksydigitalbanking.app.modules.banktobankone.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class BankToBankOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_bank_to_bank2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectBankToSend: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_bank_to_send)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectAAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_a_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJonathanAnderson: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jonathan_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg_1222_3443_9881_1222)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_31_250)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJonathanAnderson1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jonathan_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.msg_1222_3443_9881_1222)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance1: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_31_250)

)
