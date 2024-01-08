package com.banksydigitalbanking.app.modules.home.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class OptionsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSendMoney: String? = MyApp.getInstance().resources.getString(R.string.lbl_send_money)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_to_acc_to_acc)

)
